data{
    real male_age1_inmigrant; 
    real male_age2_inmigrant; 
    real male_age3_inmigrant; 
    real female_age1_inmigrant; 
    real female_age2_inmigrant; 
    real female_age3_inmigrant;
    real male_age1_resident; 
    real male_age2_resident; 
    real male_age3_resident; 
    real female_age1_resident; 
    real female_age2_resident;
    dispersion ~ exponential( 1 );
    fishing ~ normal( 0 , 10 );
    male_age1_inmigrant ~ normal( 0 , 10 );
    male_age2_inmigrant ~ normal( 0 , 10 ); 
    male_age3_inmigrant ~ normal( 0 , 10 );
    female_age1_inmigrant ~ normal( 0 , 10 );
    female_age2_inmigrant ~ normal( 0 , 10 ); 
    female_age3_inmigrant ~ normal( 0 , 10 );
    male_age1_resident ~ normal( 0 , 10 ); 
    male_age2_resident ~ normal( 0 , 10 );
    male_age3_resident ~ normal( 0 , 10 );
    female_age1_resident ~ normal( 0 , 10 );
    female_age2_resident ~ normal( 0 , 10 );
			male_age1_inmigrant*MALE[i]*AGE1[i]*INMIGRANT[i] + 
			male_age2_inmigrant*MALE[i]*AGE2[i]*INMIGRANT[i] + 
			male_age3_inmigrant*MALE[i]*INMIGRANT[i] + 
			female_age1_inmigrant*(1-MALE[i])*AGE1[i]*INMIGRANT[i] + 
			female_age2_inmigrant*(1-MALE[i])*AGE2[i]*INMIGRANT[i] + 
			female_age3_inmigrant*(1-MALE[i])*INMIGRANT[i] + 
			male_age1_resident*MALE[i]*AGE1[i]*(1-INMIGRANT[i]) + 
			male_age2_resident*MALE[i]*AGE2[i]*(1-INMIGRANT[i]) + 
			male_age3_resident*MALE[i]*(1-INMIGRANT[i]) + 
			female_age1_resident*(1-MALE[i])*AGE1[i]*(1-INMIGRANT[i]) + 
			female_age2_resident*(1-MALE[i])*AGE2[i]*(1-INMIGRANT[i]);