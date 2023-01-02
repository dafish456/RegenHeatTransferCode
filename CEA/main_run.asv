function main_run
    CEA_RUN = true;
    CEA_SAVE_FILE = 'cea.mat';

    inp = containers.Map;

    inp('type') = 'eq';
    inp('p') = 300;
    inp('p_unit') = 'psi';
    inp('o/f') = 2.8;
    inp('sup') = 6.0;
    inp('fuel') = 'CH4(L)';
    inp('fuel_t') = 298; % K 
    inp('ox') = 'O2(L)';
    inp('ox_t') = 298; % K
    inp('file_name') = 'test.inp';

    if CEA_RUN
        data = cea_rocket_run(inp);
        save(CEA_SAVE_FILE, 'data');
    else
        load(CEA_SAVE_FILE);
    end

    data_eq = data('eq');
    isp = squeeze(data_eq('isp'))
end
