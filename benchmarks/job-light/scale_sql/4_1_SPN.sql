select count(*) from title t,cast_info ci,movie_companies mc,movie_info mi where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi.movie_id and mc.company_type_id > 1;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info mi where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi.movie_id and mc.company_type_id = 1;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info mi where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi.movie_id and t.kind_id < 2;
select count(*) from title t,cast_info ci,movie_info mi,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and ci.person_id = 1954128;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info mi where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and t.production_year = 1909;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and t.production_year > 1887;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info mi where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and t.kind_id < 5;
select count(*) from title t,cast_info ci,movie_info mi,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and t.production_year = 1922;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and ci.person_id > 3813602;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi_idx.movie_id and mi_idx.info_type_id < 108;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and mk.keyword_id > 109003;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info mi where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and mi.info_type_id < 79;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi_idx.movie_id and mi_idx.info_type_id = 112;
select count(*) from title t,cast_info ci,movie_info mi,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and mi_idx.info_type_id < 100;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mk.keyword_id = 77753;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info mi where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and mi.info_type_id > 43;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mi_idx.info_type_id > 99;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info mi where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and t.production_year > 1924;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and ci.role_id > 9;
select count(*) from title t,movie_companies mc,movie_info mi,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and mc.company_type_id = 1;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi_idx.movie_id and ci.role_id < 2;
select count(*) from title t,movie_keyword mk,movie_info mi,movie_info_idx mi_idx where t.id=mi.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mi.info_type_id < 37;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mc.company_id > 121789;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and t.production_year = 2013;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mc.company_id < 76917;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and mc.company_id > 23645;
select count(*) from title t,movie_companies mc,movie_info mi,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and mi.info_type_id > 99;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mk.keyword_id < 92707;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info mi where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and mc.company_id > 2487;
select count(*) from title t,movie_keyword mk,movie_info mi,movie_info_idx mi_idx where t.id=mi.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mi_idx.info_type_id > 106;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info mi where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and t.kind_id < 6;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and t.kind_id < 4;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi_idx.movie_id and mc.company_id = 50572;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and mc.company_id > 1697;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and t.kind_id = 6;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mc.company_id < 70267;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi_idx.movie_id and ci.role_id < 11;
select count(*) from title t,movie_companies mc,movie_info mi,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and mc.company_type_id < 2;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and t.production_year < 1956;
select count(*) from title t,cast_info ci,movie_info mi,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and ci.person_id = 1797398;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info mi where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and t.kind_id > 4;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and t.kind_id < 5;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info mi where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and t.production_year > 1913;
select count(*) from title t,movie_companies mc,movie_info mi,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and mi_idx.info_type_id > 100;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info mi where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and mk.keyword_id = 34753;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info mi where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi.movie_id and mc.company_type_id = 2;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info mi where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and t.kind_id > 4;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi_idx.movie_id and mc.company_id < 147412;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and t.production_year = 1974;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and t.kind_id = 1;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and ci.role_id > 9;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi_idx.movie_id and mc.company_id = 62497;
select count(*) from title t,movie_keyword mk,movie_info mi,movie_info_idx mi_idx where t.id=mi.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mi_idx.info_type_id < 107;
select count(*) from title t,cast_info ci,movie_info mi,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and ci.role_id > 10;
select count(*) from title t,cast_info ci,movie_companies mc,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mi_idx.movie_id and mc.company_type_id = 1;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info mi where t.id=mc.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and mc.company_id < 45826;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and mc.company_type_id < 2;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and t.kind_id = 6;
select count(*) from title t,movie_keyword mk,movie_info mi,movie_info_idx mi_idx where t.id=mi.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mi_idx.info_type_id < 105;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info mi where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and ci.person_id < 2881869;
select count(*) from title t,movie_keyword mk,movie_info mi,movie_info_idx mi_idx where t.id=mi.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and mk.keyword_id > 20717;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and ci.person_id > 2106717;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and t.kind_id = 6;
select count(*) from title t,cast_info ci,movie_info mi,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and ci.role_id < 5;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and ci.person_id > 3375688;
select count(*) from title t,cast_info ci,movie_keyword mk,movie_info mi where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mk.movie_id and mk.keyword_id < 82413;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and mc.company_id > 157155;
select count(*) from title t,cast_info ci,movie_companies mc,movie_keyword mk where t.id=ci.movie_id and t.id=mc.movie_id and t.id=mk.movie_id and mc.company_type_id > 1;
select count(*) from title t,cast_info ci,movie_info mi,movie_info_idx mi_idx where t.id=ci.movie_id and t.id=mi.movie_id and t.id=mi_idx.movie_id and t.kind_id = 6;
select count(*) from title t,movie_companies mc,movie_keyword mk,movie_info_idx mi_idx where t.id=mc.movie_id and t.id=mi_idx.movie_id and t.id=mk.movie_id and t.production_year < 1906;