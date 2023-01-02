function CEA_tester(ChamberPressure, ratioType, ratioVal, fuel, fuel_t, ox, ox_t, file_name)
    CEA_RUN = true;
    CEA_SAVE_FILE = 'cea.mat';

    inp = containers.Map;

    inp('type') = 'eq';
    inp('p') = ChamberPressure;
    inp('p_unit') = 'psi';
    inp('o/f') = 0.5;
    inp(ratioType) = ratioVal;
    inp('fuel') = fuel;
    inp('fuel_t') = fuel_t;
    inp('ox') = ox;
    inp('ox_t') = ox_t;
    inp('file_name') = file_name;

    if CEA_RUN
        data = cea_rocket_run(inp);
        save(CEA_SAVE_FILE, 'data');
    else
        load(CEA_SAVE_FILE);
    end

    data_eq = data('eq');
    isp = squeeze(data_eq('isp'))
end
