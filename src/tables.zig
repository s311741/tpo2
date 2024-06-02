pub const Entry = struct { x: f64, y: f64 };

pub const sin = [_]Entry {
  Entry{ .x = 0.0, .y = 0.0 },
  Entry{ .x = 0.3141592653589793, .y = 0.3090169943749474 },
  Entry{ .x = 0.6283185307179586, .y = 0.5877852522924731 },
  Entry{ .x = 0.9424777960769379, .y = 0.8090169943749475 },
  Entry{ .x = 1.2566370614359172, .y = 0.9510565162951535 },
  Entry{ .x = 1.5707963267948966, .y = 1.0 },
  Entry{ .x = 1.8849555921538759, .y = 0.9510565162951536 },
  Entry{ .x = 2.199114857512855, .y = 0.8090169943749475 },
  Entry{ .x = 2.5132741228718345, .y = 0.5877852522924732 },
  Entry{ .x = 2.827433388230814, .y = 0.3090169943749475 },
  Entry{ .x = 3.141592653589793, .y = 1.2246467991473532e-16 },
  Entry{ .x = 3.4557519189487724, .y = -0.3090169943749473 },
  Entry{ .x = 3.7699111843077517, .y = -0.587785252292473 },
  Entry{ .x = 4.084070449666731, .y = -0.8090169943749473 },
  Entry{ .x = 4.39822971502571, .y = -0.9510565162951535 },
  Entry{ .x = 4.71238898038469, .y = -1.0 },
  Entry{ .x = 5.026548245743669, .y = -0.9510565162951536 },
  Entry{ .x = 5.340707511102648, .y = -0.8090169943749476 },
  Entry{ .x = 5.654866776461628, .y = -0.5877852522924734 },
  Entry{ .x = 5.969026041820607, .y = -0.3090169943749476 },
};

pub const cos = [_]Entry {
  Entry{ .x = 0.0, .y = 1.0 },
  Entry{ .x = 0.3141592653589793, .y = 0.9510565162951535 },
  Entry{ .x = 0.6283185307179586, .y = 0.8090169943749475 },
  Entry{ .x = 0.9424777960769379, .y = 0.5877852522924731 },
  Entry{ .x = 1.2566370614359172, .y = 0.30901699437494745 },
  Entry{ .x = 1.5707963267948966, .y = 6.123233995736766e-17 },
  Entry{ .x = 1.8849555921538759, .y = -0.30901699437494734 },
  Entry{ .x = 2.199114857512855, .y = -0.587785252292473 },
  Entry{ .x = 2.5132741228718345, .y = -0.8090169943749473 },
  Entry{ .x = 2.827433388230814, .y = -0.9510565162951535 },
  Entry{ .x = 3.141592653589793, .y = -1.0 },
  Entry{ .x = 3.4557519189487724, .y = -0.9510565162951536 },
  Entry{ .x = 3.7699111843077517, .y = -0.8090169943749476 },
  Entry{ .x = 4.084070449666731, .y = -0.5877852522924732 },
  Entry{ .x = 4.39822971502571, .y = -0.30901699437494756 },
  Entry{ .x = 4.71238898038469, .y = -1.8369701987210297e-16 },
  Entry{ .x = 5.026548245743669, .y = 0.30901699437494723 },
  Entry{ .x = 5.340707511102648, .y = 0.5877852522924729 },
  Entry{ .x = 5.654866776461628, .y = 0.8090169943749473 },
  Entry{ .x = 5.969026041820607, .y = 0.9510565162951535 },
};

pub const tan = [_]Entry {
  Entry{ .x = 0.0, .y = 0.0 },
  Entry{ .x = 0.3141592653589793, .y = 0.3249196962329063 },
  Entry{ .x = 0.6283185307179586, .y = 0.7265425280053609 },
  Entry{ .x = 0.9424777960769379, .y = 1.3763819204711734 },
  Entry{ .x = 1.2566370614359172, .y = 3.077683537175253 },
  Entry{ .x = 1.8849555921538759, .y = -3.077683537175254 },
  Entry{ .x = 2.199114857512855, .y = -1.3763819204711738 },
  Entry{ .x = 2.5132741228718345, .y = -0.726542528005361 },
  Entry{ .x = 2.827433388230814, .y = -0.32491969623290645 },
  Entry{ .x = 3.141592653589793, .y = -1.2246467991473532e-16 },
  Entry{ .x = 3.4557519189487724, .y = 0.3249196962329062 },
  Entry{ .x = 3.7699111843077517, .y = 0.7265425280053607 },
  Entry{ .x = 4.084070449666731, .y = 1.3763819204711731 },
  Entry{ .x = 4.39822971502571, .y = 3.077683537175252 },
  Entry{ .x = 5.026548245743669, .y = -3.0776835371752553 },
  Entry{ .x = 5.340707511102648, .y = -1.3763819204711742 },
  Entry{ .x = 5.654866776461628, .y = -0.7265425280053612 },
  Entry{ .x = 5.969026041820607, .y = -0.32491969623290656 },
};

pub const cot = [_]Entry {
  Entry{ .x = 0.3141592653589793, .y = 3.0776835371752536 },
  Entry{ .x = 0.6283185307179586, .y = 1.3763819204711736 },
  Entry{ .x = 0.9424777960769379, .y = 0.7265425280053609 },
  Entry{ .x = 1.2566370614359172, .y = 0.32491969623290634 },
  Entry{ .x = 1.5707963267948966, .y = 6.123233995736766e-17 },
  Entry{ .x = 1.8849555921538759, .y = -0.32491969623290623 },
  Entry{ .x = 2.199114857512855, .y = -0.7265425280053608 },
  Entry{ .x = 2.5132741228718345, .y = -1.3763819204711731 },
  Entry{ .x = 2.827433388230814, .y = -3.0776835371752522 },
  Entry{ .x = 3.4557519189487724, .y = 3.077683537175255 },
  Entry{ .x = 3.7699111843077517, .y = 1.376381920471174 },
  Entry{ .x = 4.084070449666731, .y = 0.7265425280053611 },
  Entry{ .x = 4.39822971502571, .y = 0.3249196962329065 },
  Entry{ .x = 4.71238898038469, .y = 1.8369701987210297e-16 },
  Entry{ .x = 5.026548245743669, .y = -0.3249196962329061 },
  Entry{ .x = 5.340707511102648, .y = -0.7265425280053605 },
  Entry{ .x = 5.654866776461628, .y = -1.376381920471173 },
  Entry{ .x = 5.969026041820607, .y = -3.0776835371752513 },
};

pub const sec = [_]Entry {
  Entry{ .x = 0.0, .y = 1.0 },
  Entry{ .x = 0.3141592653589793, .y = 1.0514622242382672 },
  Entry{ .x = 0.6283185307179586, .y = 1.2360679774997896 },
  Entry{ .x = 0.9424777960769379, .y = 1.7013016167040798 },
  Entry{ .x = 1.2566370614359172, .y = 3.2360679774997894 },
  Entry{ .x = 1.8849555921538759, .y = -3.2360679774997907 },
  Entry{ .x = 2.199114857512855, .y = -1.7013016167040802 },
  Entry{ .x = 2.5132741228718345, .y = -1.2360679774997898 },
  Entry{ .x = 2.827433388230814, .y = -1.0514622242382672 },
  Entry{ .x = 3.141592653589793, .y = -1.0 },
  Entry{ .x = 3.4557519189487724, .y = -1.0514622242382672 },
  Entry{ .x = 3.7699111843077517, .y = -1.2360679774997896 },
  Entry{ .x = 4.084070449666731, .y = -1.7013016167040795 },
  Entry{ .x = 4.39822971502571, .y = -3.236067977499788 },
  Entry{ .x = 5.026548245743669, .y = 3.2360679774997916 },
  Entry{ .x = 5.340707511102648, .y = 1.7013016167040804 },
  Entry{ .x = 5.654866776461628, .y = 1.2360679774997898 },
  Entry{ .x = 5.969026041820607, .y = 1.0514622242382672 },
};

pub const ln = [_]Entry {
  Entry{ .x = 0.001, .y = -6.907755278982137 },
  Entry{ .x = 0.50095, .y = -0.691248983276865 },
  Entry{ .x = 1.0009, .y = 0.0008995952428359939 },
  Entry{ .x = 1.5008499999999998, .y = 0.4060316142799039 },
  Entry{ .x = 2.0008, .y = 0.6935471005812722 },
  Entry{ .x = 2.50075, .y = 0.916590686883153 },
  Entry{ .x = 3.0006999999999997, .y = 1.0988455947834546 },
  Entry{ .x = 3.50065, .y = 1.252948665538319 },
  Entry{ .x = 4.0006, .y = 1.3864443498710155 },
  Entry{ .x = 4.5005500000000005, .y = 1.5041996115299692 },
  Entry{ .x = 5.000500000000001, .y = 1.6095379074344338 },
  Entry{ .x = 5.500450000000001, .y = 1.7048299070733186 },
  Entry{ .x = 6.0004, .y = 1.7918261336725982 },
  Entry{ .x = 6.50035, .y = 1.8718560216057856 },
  Entry{ .x = 7.0003, .y = 1.9459530052798293 },
  Entry{ .x = 7.50025, .y = 2.014936353320055 },
  Entry{ .x = 8.0002, .y = 2.079466541367341 },
  Entry{ .x = 8.50015, .y = 2.140083810399387 },
  Entry{ .x = 9.0001, .y = 2.1972356883856023 },
  Entry{ .x = 9.50005, .y = 2.2512970617505395 },
};

pub const log_2 = [_]Entry {
  Entry{ .x = 0.001, .y = -9.965784284662087 },
  Entry{ .x = 0.50095, .y = -0.9972614801930711 },
  Entry{ .x = 1.0009, .y = 0.0012978415956467913 },
  Entry{ .x = 1.5008499999999998, .y = 0.5857797963657578 },
  Entry{ .x = 2.0008, .y = 1.0005769626315204 },
  Entry{ .x = 2.50075, .y = 1.3223608384913335 },
  Entry{ .x = 3.0006999999999997, .y = 1.5852990902967732 },
  Entry{ .x = 3.50065, .y = 1.8076228262605774 },
  Entry{ .x = 4.0006, .y = 2.0002163880274373 },
  Entry{ .x = 4.5005500000000005, .y = 2.170101320061392 },
  Entry{ .x = 5.000500000000001, .y = 2.322072357178457 },
  Entry{ .x = 5.500450000000001, .y = 2.459549652493869 },
  Entry{ .x = 6.0004, .y = 2.585058677184702 },
  Entry{ .x = 6.50035, .y = 2.700517399628811 },
  Entry{ .x = 7.0003, .y = 2.8074167505201846 },
  Entry{ .x = 7.50025, .y = 2.9069386846417355 },
  Entry{ .x = 8.0002, .y = 3.0000360669251873 },
  Entry{ .x = 8.50015, .y = 3.087488300349952 },
  Entry{ .x = 9.0001, .y = 3.1699410312981566 },
  Entry{ .x = 9.50005, .y = 3.247935106555398 },
};

pub const log_3 = [_]Entry {
  Entry{ .x = 0.001, .y = -6.287709822868153 },
  Entry{ .x = 0.50095, .y = -0.6292019399445212 },
  Entry{ .x = 1.0009, .y = 0.000818846878116217 },
  Entry{ .x = 1.5008499999999998, .y = 0.3695859025681861 },
  Entry{ .x = 2.0008, .y = 0.6312937764623826 },
  Entry{ .x = 2.50075, .y = 0.8343167979618829 },
  Entry{ .x = 3.0006999999999997, .y = 1.0002123643779988 },
  Entry{ .x = 3.50065, .y = 1.1404830243227273 },
  Entry{ .x = 4.0006, .y = 1.2619960327877413 },
  Entry{ .x = 4.5005500000000005, .y = 1.3691814910914282 },
  Entry{ .x = 5.000500000000001, .y = 1.465064540089697 },
  Entry{ .x = 5.500450000000001, .y = 1.5518030561447205 },
  Entry{ .x = 6.0004, .y = 1.6309904341639019 },
  Entry{ .x = 6.50035, .y = 1.7038367774632388 },
  Entry{ .x = 7.0003, .y = 1.7712827585780817 },
  Entry{ .x = 7.50025, .y = 1.8340741079483467 },
  Entry{ .x = 8.0002, .y = 1.8928120164105928 },
  Entry{ .x = 8.50015, .y = 1.947988232494553 },
  Entry{ .x = 9.0001, .y = 2.0000101137129973 },
  Entry{ .x = 9.50005, .y = 2.0492188963950824 },
};

pub const log_5 = [_]Entry {
  Entry{ .x = 0.001, .y = -4.29202967422018 },
  Entry{ .x = 0.50095, .y = -0.42949714178872916 },
  Entry{ .x = 1.0009, .y = 0.0005589499513376404 },
  Entry{ .x = 1.5008499999999998, .y = 0.25228162648773766 },
  Entry{ .x = 2.0008, .y = 0.4309250423536733 },
  Entry{ .x = 2.50075, .y = 0.5695098144524936 },
  Entry{ .x = 3.0006999999999997, .y = 0.6827511557258955 },
  Entry{ .x = 3.50065, .y = 0.7785007771088045 },
  Entry{ .x = 4.0006, .y = 0.861446309397651 },
  Entry{ .x = 4.5005500000000005, .y = 0.934611767194567 },
  Entry{ .x = 5.000500000000001, .y = 1.0000621303869885 },
  Entry{ .x = 5.500450000000001, .y = 1.0592703787466695 },
  Entry{ .x = 6.0004, .y = 1.1133241735076662 },
  Entry{ .x = 6.50035, .y = 1.1630495386894462 },
  Entry{ .x = 7.0003, .y = 1.2090885831916227 },
  Entry{ .x = 7.50025, .y = 1.2519503472318994 },
  Entry{ .x = 8.0002, .y = 1.2920452073993793 },
  Entry{ .x = 8.50015, .y = 1.329708834286588 },
  Entry{ .x = 9.0001, .y = 1.3652192926551119 },
  Entry{ .x = 9.50005, .y = 1.398809512537018 },
};

pub const log_10 = [_]Entry {
  Entry{ .x = 0.001, .y = -3.0 },
  Entry{ .x = 0.50095, .y = -0.3002056190583757 },
  Entry{ .x = 1.0009, .y = 0.000390689249910088 },
  Entry{ .x = 1.5008499999999998, .y = 0.17633728956003186 },
  Entry{ .x = 2.0008, .y = 0.3012036787224461 },
  Entry{ .x = 2.50075, .y = 0.3980702774772647 },
  Entry{ .x = 3.0006999999999997, .y = 0.47722257827815096 },
  Entry{ .x = 3.50065, .y = 0.544148691551335 },
  Entry{ .x = 4.0006, .y = 0.6021251306149236 },
  Entry{ .x = 4.5005500000000005, .y = 0.6532655909684806 },
  Entry{ .x = 5.000500000000001, .y = 0.6990134316128815 },
  Entry{ .x = 5.500450000000001, .y = 0.7403982212255759 },
  Entry{ .x = 6.0004, .y = 0.7781802023840478 },
  Entry{ .x = 6.50035, .y = 0.8129367411007667 },
  Entry{ .x = 7.0003, .y = 0.8451166522360793 },
  Entry{ .x = 7.50025, .y = 0.8750757396331608 },
  Entry{ .x = 8.0002, .y = 0.9031008442182764 },
  Entry{ .x = 8.50015, .y = 0.9294265896669387 },
  Entry{ .x = 9.0001, .y = 0.9542473349067602 },
  Entry{ .x = 9.50005, .y = 0.9777258910432637 },
};

pub const f = [_]Entry {
  Entry{ .x = -10.0, .y = -0.06233035381970169 },
  Entry{ .x = -9.8, .y = -0.0034744467246529812 },
  Entry{ .x = -9.6, .y = -3.0317386441229305e-05 },
  Entry{ .x = -9.4, .y = -2.3162923863800776e-10 },
  Entry{ .x = -9.2, .y = -0.0001392732561325529 },
  Entry{ .x = -9.0, .y = -0.00780243595664324 },
  Entry{ .x = -8.8, .y = -0.1140809208954531 },
  Entry{ .x = -8.6, .y = -1.089261932946647 },
  Entry{ .x = -8.4, .y = -10.316439421019837 },
  Entry{ .x = -8.2, .y = -154.454752374812 },
  Entry{ .x = -8.0, .y = -14381.559999279654 },
  Entry{ .x = -7.8, .y = 2167834.482791466 },
  Entry{ .x = -7.6, .y = 821.1461909312541 },
  Entry{ .x = -7.4, .y = 32.48101406106023 },
  Entry{ .x = -7.199999999999999, .y = 2.999580492952902 },
  Entry{ .x = -7.0, .y = 0.3301899537414349 },
  Entry{ .x = -6.8, .y = 0.029300000121128156 },
  Entry{ .x = -6.6, .y = 0.0011801703165481294 },
  Entry{ .x = -6.4, .y = 2.593613798726809e-06 },
  Entry{ .x = -6.199999999999999, .y = 3.348078089634243e-07 },
  Entry{ .x = -6.0, .y = 0.0005831249668990194 },
  Entry{ .x = -5.8, .y = 0.01847127051328899 },
  Entry{ .x = -5.6, .y = 0.2255192181555439 },
  Entry{ .x = -5.3999999999999995, .y = 2.067591874775006 },
  Entry{ .x = -5.199999999999999, .y = 21.061065428454565 },
  Entry{ .x = -5.0, .y = 423.34911218650706 },
  Entry{ .x = -4.8, .y = 190533.6173062173 },
  Entry{ .x = -4.6, .y = -54257.88136659354 },
  Entry{ .x = -4.3999999999999995, .y = -270.8240455728241 },
  Entry{ .x = -4.199999999999999, .y = -15.477291224348262 },
  Entry{ .x = -4.0, .y = -1.5746723312406619 },
  Entry{ .x = -3.8, .y = -0.1694765500038835 },
  Entry{ .x = -3.5999999999999996, .y = -0.01294859734033309 },
  Entry{ .x = -3.3999999999999995, .y = -0.00032967455683790913 },
  Entry{ .x = -3.1999999999999993, .y = -3.990516704603005e-08 },
  Entry{ .x = -3.0, .y = -8.305619680818555e-06 },
  Entry{ .x = -2.8, .y = -0.0019028724596422601 },
  Entry{ .x = -2.5999999999999996, .y = -0.04062157313945285 },
  Entry{ .x = -2.3999999999999995, .y = -0.43562512881262666 },
  Entry{ .x = -2.1999999999999993, .y = -3.956690649762825 },
  Entry{ .x = -2.0, .y = -45.290048393317306 },
  Entry{ .x = -1.799999999999999, .y = -1408.9137812892427 },
  Entry{ .x = -1.5999999999999996, .y = -46990486.27876736 },
  Entry{ .x = -1.4000000000000004, .y = 6456.274375161087 },
  Entry{ .x = -1.1999999999999993, .y = 104.93417523480372 },
  Entry{ .x = -1.0, .y = 7.709935905034 },
  Entry{ .x = -0.7999999999999989, .y = 0.8301542137228161 },
  Entry{ .x = -0.5999999999999996, .y = 0.0846229828472676 },
  Entry{ .x = -0.3999999999999986, .y = 0.005260856654742 },
  Entry{ .x = -0.1999999999999993, .y = 6.79997126499369e-05 },
  Entry{ .x = 0.20000000000000107, .y = -0.2898349052928406 },
  Entry{ .x = 0.40000000000000036, .y = -0.004865408999426186 },
  Entry{ .x = 0.6000000000000014, .y = -6.103027555988425e-05 },
  Entry{ .x = 0.8000000000000007, .y = 3.220218295845508e-07 },
  Entry{ .x = 1.200000000000001, .y = 6.572833401960368e-07 },
  Entry{ .x = 1.4000000000000004, .y = 3.845815485326473e-05 },
  Entry{ .x = 1.6000000000000014, .y = 0.00038232298646827587 },
  Entry{ .x = 1.8000000000000007, .y = 0.0018414973854612984 },
  Entry{ .x = 2.0, .y = 0.005985499195344429 },
  Entry{ .x = 2.200000000000001, .y = 0.015220203574586418 },
  Entry{ .x = 2.4000000000000004, .y = 0.03275542514962781 },
  Entry{ .x = 2.6000000000000014, .y = 0.06251124107360131 },
  Entry{ .x = 2.8000000000000007, .y = 0.10899832598826369 },
  Entry{ .x = 3.0, .y = 0.17719398097289596 },
  Entry{ .x = 3.200000000000001, .y = 0.27242557831918046 },
  Entry{ .x = 3.4000000000000004, .y = 0.4002668522060697 },
  Entry{ .x = 3.6000000000000014, .y = 0.5664488113692939 },
  Entry{ .x = 3.8000000000000007, .y = 0.7767850768265333 },
  Entry{ .x = 4.0, .y = 1.0371104800907822 },
  Entry{ .x = 4.200000000000001, .y = 1.3532313641161762 },
  Entry{ .x = 4.4, .y = 1.7308859492761304 },
  Entry{ .x = 4.600000000000001, .y = 2.1757132068072234 },
  Entry{ .x = 4.800000000000001, .y = 2.6932288350376843 },
  Entry{ .x = 5.0, .y = 3.2888071111403785 },
  Entry{ .x = 5.200000000000001, .y = 3.967667567680732 },
  Entry{ .x = 5.4, .y = 4.734865606485636 },
  Entry{ .x = 5.600000000000001, .y = 5.595286307243577 },
  Entry{ .x = 5.800000000000001, .y = 6.553640813603635 },
  Entry{ .x = 6.0, .y = 7.614464786230147 },
  Entry{ .x = 6.199999999999999, .y = 8.782118502069846 },
  Entry{ .x = 6.400000000000002, .y = 10.06078825410395 },
  Entry{ .x = 6.600000000000001, .y = 11.454488768192888 },
  Entry{ .x = 6.800000000000001, .y = 12.967066405232778 },
  Entry{ .x = 7.0, .y = 14.602202959465128 },
  Entry{ .x = 7.199999999999999, .y = 16.36341989891875 },
  Entry{ .x = 7.400000000000002, .y = 18.2540829228933 },
  Entry{ .x = 7.600000000000001, .y = 20.277406735191807 },
  Entry{ .x = 7.800000000000001, .y = 22.436459951374346 },
  Entry{ .x = 8.0, .y = 24.734170074375204 },
  Entry{ .x = 8.2, .y = 27.173328486026705 },
  Entry{ .x = 8.400000000000002, .y = 29.756595412858285 },
  Entry{ .x = 8.600000000000001, .y = 32.48650483342344 },
  Entry{ .x = 8.8, .y = 35.36546930167879 },
  Entry{ .x = 9.0, .y = 38.39578466689187 },
  Entry{ .x = 9.200000000000003, .y = 41.57963467541762 },
  Entry{ .x = 9.400000000000002, .y = 44.91909544364606 },
  Entry{ .x = 9.600000000000001, .y = 48.416139794649744 },
  Entry{ .x = 9.8, .y = 52.07264145367045 },
};

