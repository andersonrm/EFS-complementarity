EFS drives enemy complementarity-modeling
================
Riley M. Anderson & Nora C. Mitchell
September 19, 2023

¶

- <a href="#overview" id="toc-overview">Overview</a>
  - <a href="#summary-of-results" id="toc-summary-of-results">Summary of
    Results</a>
- <a href="#session-information" id="toc-session-information">Session
  Information</a>

## Overview

What is this analysis about?

### Summary of Results

- 

<!-- -->

    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para, Not_Para) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density, 
    ##     weights = 1/site.varDRR.birds)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -4.5676  -0.9555   0.0000   0.4536   8.2120  
    ## 
    ## Coefficients:
    ##                               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.270632   0.241509  -5.261 2.15e-05 ***
    ## site.delta.bird.LRR          -0.231158   0.171574  -1.347 0.190472    
    ## HostPlantBE                  -0.754456   0.274619  -2.747 0.011218 *  
    ## HostPlantHI                   0.116062   0.126255   0.919 0.367101    
    ## HostPlantRM                   0.309814   0.188627   1.642 0.113533    
    ## HostPlantRO                  -0.018616   0.216497  -0.086 0.932191    
    ## HostPlantWH                  -0.001327   0.182712  -0.007 0.994267    
    ## HostPlantWO                  -1.039588   0.191241  -5.436 1.38e-05 ***
    ## cat_spAmphipyra_pyramidoides  0.881338   0.515246   1.711 0.100068    
    ## cat_spBesma_quercivoraria     0.086007   0.760300   0.113 0.910874    
    ## cat_spCrocidographa_normani  -0.908740   0.823321  -1.104 0.280646    
    ## cat_spEnnomos_subsignaria     0.319205   0.474992   0.672 0.507988    
    ## cat_spEutrapela_clemataria   -1.698306   2.214874  -0.767 0.450694    
    ## cat_spIridopsis_ephyraria    -1.135295   2.078324  -0.546 0.589933    
    ## cat_spLithophane_antennata    1.243088   2.693819   0.461 0.648624    
    ## cat_spLomographa_glomeraria  -1.853780   0.798064  -2.323 0.028987 *  
    ## cat_spLomographa_vestaliata  -1.940065   1.258507  -1.542 0.136264    
    ## cat_spLymantria_dispar       -0.831300   0.292594  -2.841 0.009022 ** 
    ## cat_spMelanolophia_canadaria -1.030149   0.237490  -4.338 0.000224 ***
    ## cat_spMorrisonia_confusa     -2.311735   0.576216  -4.012 0.000511 ***
    ## cat_spNadata_gibbosa          1.005552   0.617487   1.628 0.116486    
    ## cat_spNola_triquetrana        0.629855   0.328999   1.914 0.067557 .  
    ## cat_spOrthosia_rubescens      0.364971   0.252520   1.445 0.161301    
    ## cat_spPapilio_glaucus        -2.026375   1.343204  -1.509 0.144451    
    ## cat_spParallelia_bistriaris  -1.852268   1.696167  -1.092 0.285661    
    ## cat_spPyreferra_hesperidago   0.147471   0.380293   0.388 0.701595    
    ## cat_spSatyrium_liparops      -1.068608   0.973931  -1.097 0.283436    
    ## cat_spSperanza_pustularia    -0.348599   0.292988  -1.190 0.245760    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 16.81779)
    ## 
    ##     Null deviance: 9443.4  on 51  degrees of freedom
    ## Residual deviance:  364.1  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 5
    ##                                      2.5 %     97.5 %
    ## (Intercept)                   -1.761826817 -0.8115376
    ## site.delta.bird.LRR           -0.562786391  0.1109106
    ## HostPlantBE                   -1.320487365 -0.2392482
    ## HostPlantHI                   -0.135029029  0.3602181
    ## HostPlantRM                   -0.069267998  0.6710844
    ## HostPlantRO                   -0.448272674  0.4015104
    ## HostPlantWH                   -0.365979909  0.3508370
    ## HostPlantWO                   -1.433180661 -0.6811645
    ## cat_spAmphipyra_pyramidoides  -0.155258340  1.8874116
    ## cat_spBesma_quercivoraria     -1.697871749  1.4142864
    ## cat_spCrocidographa_normani   -2.905310745  0.5032994
    ## cat_spEnnomos_subsignaria     -0.647929341  1.2314468
    ## cat_spEutrapela_clemataria   -11.464136524  1.2391011
    ## cat_spIridopsis_ephyraria     -9.656100114  1.7906440
    ## cat_spLithophane_antennata    -7.034271821  9.5204937
    ## cat_spLomographa_glomeraria   -3.833908081 -0.5227356
    ## cat_spLomographa_vestaliata   -5.778414269 -0.0633802
    ## cat_spLymantria_dispar        -1.397880662 -0.2476928
    ## cat_spMelanolophia_canadaria  -1.480954509 -0.5463722
    ## cat_spMorrisonia_confusa      -3.610224489 -1.2902947
    ## cat_spNadata_gibbosa          -0.284230517  2.1744537
    ## cat_spNola_triquetrana        -0.007534681  1.2844041
    ## cat_spOrthosia_rubescens      -0.117288516  0.8759439
    ## cat_spPapilio_glaucus         -5.861797920  0.1493324
    ## cat_spParallelia_bistriaris   -7.983770912  0.5383543
    ## cat_spPyreferra_hesperidago   -0.600851032  0.8938236
    ## cat_spSatyrium_liparops       -3.415396330  0.6377975
    ## cat_spSperanza_pustularia     -0.909742026  0.2410978
    ## [1] 0.9704996
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para, Not_Para) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -1.9844  -0.4713   0.0000   0.2123   2.1277  
    ## 
    ## Coefficients:
    ##                               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.212059   0.233184  -5.198 2.52e-05 ***
    ## site.delta.bird.LRR          -0.175747   0.150013  -1.172 0.252879    
    ## HostPlantBE                  -0.862987   0.319303  -2.703 0.012429 *  
    ## HostPlantHI                  -0.006687   0.205268  -0.033 0.974280    
    ## HostPlantRM                   0.274491   0.211651   1.297 0.206995    
    ## HostPlantRO                  -0.028736   0.237940  -0.121 0.904878    
    ## HostPlantWH                  -0.276205   0.227285  -1.215 0.236096    
    ## HostPlantWO                  -0.838531   0.318106  -2.636 0.014474 *  
    ## cat_spAmphipyra_pyramidoides  0.841541   0.353196   2.383 0.025457 *  
    ## cat_spBesma_quercivoraria    -0.192410   0.759553  -0.253 0.802179    
    ## cat_spCrocidographa_normani  -0.980124   0.633682  -1.547 0.135019    
    ## cat_spEnnomos_subsignaria     0.436314   0.317807   1.373 0.182480    
    ## cat_spEutrapela_clemataria   -1.748755   1.182065  -1.479 0.152039    
    ## cat_spIridopsis_ephyraria    -0.979455   0.715587  -1.369 0.183756    
    ## cat_spLithophane_antennata    1.152174   0.587746   1.960 0.061666 .  
    ## cat_spLomographa_glomeraria  -1.911510   0.701968  -2.723 0.011861 *  
    ## cat_spLomographa_vestaliata  -2.027765   0.839812  -2.415 0.023741 *  
    ## cat_spLymantria_dispar       -0.594773   0.267525  -2.223 0.035871 *  
    ## cat_spMelanolophia_canadaria -1.018218   0.225879  -4.508 0.000145 ***
    ## cat_spMorrisonia_confusa     -2.470527   0.547774  -4.510 0.000144 ***
    ## cat_spNadata_gibbosa          0.795315   0.541544   1.469 0.154926    
    ## cat_spNola_triquetrana        0.844740   0.352535   2.396 0.024715 *  
    ## cat_spOrthosia_rubescens      0.324750   0.223783   1.451 0.159675    
    ## cat_spPapilio_glaucus        -1.938382   0.834672  -2.322 0.029019 *  
    ## cat_spParallelia_bistriaris  -1.894045   1.179136  -1.606 0.121287    
    ## cat_spPyreferra_hesperidago   0.369979   0.356407   1.038 0.309579    
    ## cat_spSatyrium_liparops      -1.021200   0.803590  -1.271 0.215982    
    ## cat_spSperanza_pustularia    -0.373508   0.280989  -1.329 0.196259    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 1.258963)
    ## 
    ##     Null deviance: 346.371  on 51  degrees of freedom
    ## Residual deviance:  28.523  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 5
    ##                                   2.5 %      97.5 %
    ## (Intercept)                  -1.6816805 -0.76545628
    ## site.delta.bird.LRR          -0.4710976  0.11872411
    ## HostPlantBE                  -1.5151892 -0.25815375
    ## HostPlantHI                  -0.4126173  0.39321977
    ## HostPlantRM                  -0.1427708  0.68792138
    ## HostPlantRO                  -0.4988049  0.43516929
    ## HostPlantWH                  -0.7277275  0.16473432
    ## HostPlantWO                  -1.4985028 -0.24448249
    ## cat_spAmphipyra_pyramidoides  0.1451995  1.53447731
    ## cat_spBesma_quercivoraria    -1.9401761  1.16024042
    ## cat_spCrocidographa_normani  -2.4220691  0.14055865
    ## cat_spEnnomos_subsignaria    -0.1888297  1.06003562
    ## cat_spEutrapela_clemataria   -5.1861059  0.07381738
    ## cat_spIridopsis_ephyraria    -2.6704597  0.25588622
    ## cat_spLithophane_antennata   -0.0154714  2.32333047
    ## cat_spLomographa_glomeraria  -3.5851908 -0.71363638
    ## cat_spLomographa_vestaliata  -4.1650896 -0.65293321
    ## cat_spLymantria_dispar       -1.1172924 -0.06594996
    ## cat_spMelanolophia_canadaria -1.4538430 -0.56601444
    ## cat_spMorrisonia_confusa     -3.7094981 -1.50590875
    ## cat_spNadata_gibbosa         -0.3066121  1.83819973
    ## cat_spNola_triquetrana        0.1539847  1.53876485
    ## cat_spOrthosia_rubescens     -0.1053601  0.77404036
    ## cat_spPapilio_glaucus        -3.7969056 -0.42168110
    ## cat_spParallelia_bistriaris  -5.3288422 -0.08206211
    ## cat_spPyreferra_hesperidago  -0.3315933  1.06881225
    ## cat_spSatyrium_liparops      -2.8327624  0.42830839
    ## cat_spSperanza_pustularia    -0.9166093  0.18639880
    ## [1] 0.9479886
    ## 
    ## Call:
    ## glm(formula = log(para_prop + 1e-04) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, data = modeling_data_density, weights = 1/site.varDRR.birds)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -7.9500  -0.7554   0.0000   0.9694  13.5918  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.80085    0.77074  -2.337   0.0281 *  
    ## site.delta.bird.LRR          -0.35890    0.52023  -0.690   0.4969    
    ## HostPlantBE                  -1.08737    0.69411  -1.567   0.1303    
    ## HostPlantHI                   0.47064    0.65801   0.715   0.4814    
    ## HostPlantRM                   0.06793    0.84043   0.081   0.9363    
    ## HostPlantRO                   0.38461    0.79603   0.483   0.6334    
    ## HostPlantWH                  -0.27240    0.77404  -0.352   0.7280    
    ## HostPlantWO                  -0.38218    0.64213  -0.595   0.5573    
    ## cat_spAmphipyra_pyramidoides  0.74404    1.85369   0.401   0.6917    
    ## cat_spBesma_quercivoraria    -0.09208    1.66091  -0.055   0.9562    
    ## cat_spCrocidographa_normani  -0.67497    1.51048  -0.447   0.6590    
    ## cat_spEnnomos_subsignaria     0.18699    1.80311   0.104   0.9183    
    ## cat_spEutrapela_clemataria   -0.92243    2.81637  -0.328   0.7461    
    ## cat_spIridopsis_ephyraria    -0.45329    3.00114  -0.151   0.8812    
    ## cat_spLithophane_antennata    1.47823    7.15685   0.207   0.8381    
    ## cat_spLomographa_glomeraria  -1.36632    1.78599  -0.765   0.4517    
    ## cat_spLomographa_vestaliata  -1.37490    2.28332  -0.602   0.5527    
    ## cat_spLymantria_dispar       -0.12705    0.96902  -0.131   0.8968    
    ## cat_spMelanolophia_canadaria -0.71581    0.70380  -1.017   0.3193    
    ## cat_spMorrisonia_confusa     -4.59666    0.86190  -5.333 1.79e-05 ***
    ## cat_spNadata_gibbosa          0.47720    1.93577   0.247   0.8074    
    ## cat_spNola_triquetrana        1.01397    1.35321   0.749   0.4610    
    ## cat_spOrthosia_rubescens      0.50871    0.81083   0.627   0.5363    
    ## cat_spPapilio_glaucus        -1.89845    3.05873  -0.621   0.5407    
    ## cat_spParallelia_bistriaris  -1.08963    2.23563  -0.487   0.6304    
    ## cat_spPyreferra_hesperidago   0.64717    1.73966   0.372   0.7131    
    ## cat_spSatyrium_liparops      -0.92172    2.20462  -0.418   0.6796    
    ## cat_spSperanza_pustularia     0.19026    1.12452   0.169   0.8671    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 26.25301)
    ## 
    ##     Null deviance: 2703.69  on 51  degrees of freedom
    ## Residual deviance:  630.07  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: 212.89
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                    2.5 %     97.5 %
    ## (Intercept)                   -3.3114610 -0.2902307
    ## site.delta.bird.LRR           -1.3785436  0.6607342
    ## HostPlantBE                   -2.4478083  0.2730600
    ## HostPlantHI                   -0.8190366  1.7603094
    ## HostPlantRM                   -1.5792946  1.7151487
    ## HostPlantRO                   -1.1755805  1.9448096
    ## HostPlantWH                   -1.7894835  1.2446862
    ## HostPlantWO                   -1.6407277  0.8763633
    ## cat_spAmphipyra_pyramidoides  -2.8891279  4.3772098
    ## cat_spBesma_quercivoraria     -3.3474056  3.1632366
    ## cat_spCrocidographa_normani   -3.6354531  2.2855208
    ## cat_spEnnomos_subsignaria     -3.3470354  3.7210180
    ## cat_spEutrapela_clemataria    -6.4424142  4.5975587
    ## cat_spIridopsis_ephyraria     -6.3354117  5.4288257
    ## cat_spLithophane_antennata   -12.5489312 15.5053962
    ## cat_spLomographa_glomeraria   -4.8668018  2.1341656
    ## cat_spLomographa_vestaliata   -5.8501142  3.1003182
    ## cat_spLymantria_dispar        -2.0262897  1.7721880
    ## cat_spMelanolophia_canadaria  -2.0952371  0.6636137
    ## cat_spMorrisonia_confusa      -6.2859472 -2.9073713
    ## cat_spNadata_gibbosa          -3.3168432  4.2712505
    ## cat_spNola_triquetrana        -1.6382640  3.6662085
    ## cat_spOrthosia_rubescens      -1.0804938  2.0979091
    ## cat_spPapilio_glaucus         -7.8934569  4.0965528
    ## cat_spParallelia_bistriaris   -5.4713798  3.2921264
    ## cat_spPyreferra_hesperidago   -2.7624976  4.0568467
    ## cat_spSatyrium_liparops       -5.2426954  3.3992544
    ## cat_spSperanza_pustularia     -2.0137537  2.3942826
    ## [1] 0.7597017
    ## 
    ## Call:
    ## glm(formula = log(para_prop + 1e-04) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.4516  -0.4305   0.0000   0.3679   3.2441  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -2.03436    0.82251  -2.473   0.0209 *  
    ## site.delta.bird.LRR          -0.27868    0.46271  -0.602   0.5526    
    ## HostPlantBE                  -0.85868    0.93896  -0.915   0.3695    
    ## HostPlantHI                   0.90422    0.88229   1.025   0.3157    
    ## HostPlantRM                   0.42414    0.93330   0.454   0.6536    
    ## HostPlantRO                   0.78391    0.93332   0.840   0.4092    
    ## HostPlantWH                  -0.28393    0.92219  -0.308   0.7608    
    ## HostPlantWO                   0.56903    0.98922   0.575   0.5705    
    ## cat_spAmphipyra_pyramidoides  0.68903    1.20173   0.573   0.5717    
    ## cat_spBesma_quercivoraria    -0.83699    1.65676  -0.505   0.6180    
    ## cat_spCrocidographa_normani  -0.74209    1.20147  -0.618   0.5426    
    ## cat_spEnnomos_subsignaria     0.20049    1.18716   0.169   0.8673    
    ## cat_spEutrapela_clemataria   -1.08451    1.60672  -0.675   0.5061    
    ## cat_spIridopsis_ephyraria    -0.32577    1.19548  -0.272   0.7876    
    ## cat_spLithophane_antennata    1.25756    1.59734   0.787   0.4388    
    ## cat_spLomographa_glomeraria  -1.13158    1.63315  -0.693   0.4950    
    ## cat_spLomographa_vestaliata  -1.18355    1.63157  -0.725   0.4752    
    ## cat_spLymantria_dispar       -0.12278    0.92020  -0.133   0.8950    
    ## cat_spMelanolophia_canadaria -0.72821    0.75478  -0.965   0.3443    
    ## cat_spMorrisonia_confusa     -4.83325    0.76543  -6.314 1.58e-06 ***
    ## cat_spNadata_gibbosa         -0.16898    1.68088  -0.101   0.9208    
    ## cat_spNola_triquetrana        1.25696    1.62776   0.772   0.4475    
    ## cat_spOrthosia_rubescens      0.42579    0.75589   0.563   0.5785    
    ## cat_spPapilio_glaucus        -1.45273    2.11601  -0.687   0.4990    
    ## cat_spParallelia_bistriaris  -1.23915    1.61794  -0.766   0.4512    
    ## cat_spPyreferra_hesperidago   0.90120    1.63847   0.550   0.5874    
    ## cat_spSatyrium_liparops      -0.53476    1.91723  -0.279   0.7827    
    ## cat_spSperanza_pustularia     0.06516    1.64867   0.040   0.9688    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 1.988783)
    ## 
    ##     Null deviance: 219.857  on 51  degrees of freedom
    ## Residual deviance:  47.731  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: 201.11
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                  -3.6464565 -0.4222655
    ## site.delta.bird.LRR          -1.1855684  0.6282174
    ## HostPlantBE                  -2.6990083  0.9816387
    ## HostPlantHI                  -0.8250453  2.6334852
    ## HostPlantRM                  -1.4050889  2.2533749
    ## HostPlantRO                  -1.0453666  2.6131885
    ## HostPlantWH                  -2.0913914  1.5235332
    ## HostPlantWO                  -1.3698076  2.5078772
    ## cat_spAmphipyra_pyramidoides -1.6663305  3.0443807
    ## cat_spBesma_quercivoraria    -4.0841754  2.4102008
    ## cat_spCrocidographa_normani  -3.0969157  1.6127409
    ## cat_spEnnomos_subsignaria    -2.1262960  2.5272727
    ## cat_spEutrapela_clemataria   -4.2336314  2.0646134
    ## cat_spIridopsis_ephyraria    -2.6688558  2.0173252
    ## cat_spLithophane_antennata   -1.8731586  4.3882852
    ## cat_spLomographa_glomeraria  -4.3324907  2.0693259
    ## cat_spLomographa_vestaliata  -4.3813686  2.0142589
    ## cat_spLymantria_dispar       -1.9263361  1.6807731
    ## cat_spMelanolophia_canadaria -2.2075531  0.7511421
    ## cat_spMorrisonia_confusa     -6.3334694 -3.3330229
    ## cat_spNadata_gibbosa         -3.4634364  3.1254737
    ## cat_spNola_triquetrana       -1.9333805  4.4473048
    ## cat_spOrthosia_rubescens     -1.0557230  1.9072975
    ## cat_spPapilio_glaucus        -5.6000315  2.6945814
    ## cat_spParallelia_bistriaris  -4.4102529  1.9319506
    ## cat_spPyreferra_hesperidago  -2.3101478  4.1125496
    ## cat_spSatyrium_liparops      -4.2924542  3.2229407
    ## cat_spSperanza_pustularia    -3.1661634  3.2964888
    ## [1] 0.6264573
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density, 
    ##     weights = 1/site.varDRR.birds)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -6.5831  -1.4523  -0.0002   1.0490   7.0810  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.583e+00  4.287e-01  -3.692  0.00114 ** 
    ## site.delta.bird.LRR          -7.189e-01  4.219e-01  -1.704  0.10130    
    ## HostPlantBE                  -8.536e-01  5.273e-01  -1.619  0.11858    
    ## HostPlantHI                  -8.506e-01  3.307e-01  -2.572  0.01672 *  
    ## HostPlantRM                   1.011e-01  3.775e-01   0.268  0.79117    
    ## HostPlantRO                  -8.559e-01  5.200e-01  -1.646  0.11283    
    ## HostPlantWH                  -5.577e-02  3.895e-01  -0.143  0.88734    
    ## HostPlantWO                  -3.014e+00  8.898e-01  -3.387  0.00243 ** 
    ## cat_spAmphipyra_pyramidoides -9.696e-01  1.412e+00  -0.686  0.49898    
    ## cat_spBesma_quercivoraria    -1.730e+01  9.981e+03  -0.002  0.99863    
    ## cat_spCrocidographa_normani  -1.027e+00  1.549e+00  -0.663  0.51385    
    ## cat_spEnnomos_subsignaria     1.047e+00  7.402e-01   1.414  0.17006    
    ## cat_spEutrapela_clemataria   -9.381e-01  2.721e+00  -0.345  0.73326    
    ## cat_spIridopsis_ephyraria    -1.971e+01  1.995e+04  -0.001  0.99922    
    ## cat_spLithophane_antennata    1.549e+00  4.196e+00   0.369  0.71530    
    ## cat_spLomographa_glomeraria  -2.648e+00  1.637e+00  -1.618  0.11878    
    ## cat_spLomographa_vestaliata  -2.065e+00  2.154e+00  -0.959  0.34733    
    ## cat_spLymantria_dispar       -3.899e+00  1.112e+00  -3.508  0.00181 ** 
    ## cat_spMelanolophia_canadaria -1.673e+00  4.284e-01  -3.904  0.00067 ***
    ## cat_spMorrisonia_confusa     -1.955e+01  3.676e+03  -0.005  0.99580    
    ## cat_spNadata_gibbosa          2.269e+00  1.213e+00   1.871  0.07355 .  
    ## cat_spNola_triquetrana       -2.123e+01  6.866e+03  -0.003  0.99756    
    ## cat_spOrthosia_rubescens      4.725e-01  4.649e-01   1.016  0.31963    
    ## cat_spPapilio_glaucus        -4.103e+00  2.822e+00  -1.454  0.15892    
    ## cat_spParallelia_bistriaris  -1.993e+01  1.425e+04  -0.001  0.99890    
    ## cat_spPyreferra_hesperidago   3.162e-01  6.364e-01   0.497  0.62378    
    ## cat_spSatyrium_liparops      -1.690e+00  1.425e+00  -1.185  0.24746    
    ## cat_spSperanza_pustularia    -5.064e-01  5.341e-01  -0.948  0.35247    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 24.87479)
    ## 
    ##     Null deviance: 8752.38  on 51  degrees of freedom
    ## Residual deviance:  450.35  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 18
    ##                                      2.5 %        97.5 %
    ## (Intercept)                     -2.4931890 -7.906518e-01
    ## site.delta.bird.LRR             -1.5654836  1.211826e-01
    ## HostPlantBE                     -2.0059482  9.794071e-02
    ## HostPlantHI                     -1.5334036 -2.315058e-01
    ## HostPlantRM                     -0.6817391  8.047848e-01
    ## HostPlantRO                     -1.9094526  1.502809e-01
    ## HostPlantWH                     -0.8660779  6.722735e-01
    ## HostPlantWO                     -5.2760501 -1.607968e+00
    ## cat_spAmphipyra_pyramidoides    -5.2504128  1.249467e+00
    ## cat_spBesma_quercivoraria    -4498.5255474 -4.481042e+03
    ## cat_spCrocidographa_normani     -6.1015945  1.309832e+00
    ## cat_spEnnomos_subsignaria       -0.4857399  2.474497e+00
    ## cat_spEutrapela_clemataria              NA  2.597436e+00
    ## cat_spIridopsis_ephyraria               NA  3.487627e+03
    ## cat_spLithophane_antennata              NA  1.346219e+01
    ## cat_spLomographa_glomeraria     -8.4109260 -3.171410e-01
    ## cat_spLomographa_vestaliata    -11.4466955  7.364243e-01
    ## cat_spLymantria_dispar          -6.9041562 -2.078169e+00
    ## cat_spMelanolophia_canadaria    -2.4631491 -7.625279e-01
    ## cat_spMorrisonia_confusa     -4274.4433321 -3.577306e+03
    ## cat_spNadata_gibbosa            -0.2003795  4.876055e+00
    ## cat_spNola_triquetrana       -2871.9550946  2.220668e+02
    ## cat_spOrthosia_rubescens        -0.3908984  1.451242e+00
    ## cat_spPapilio_glaucus          -17.3451458 -3.603588e-02
    ## cat_spParallelia_bistriaris             NA  1.623807e+03
    ## cat_spPyreferra_hesperidago     -0.9063767  1.604350e+00
    ## cat_spSatyrium_liparops         -5.0075794  9.408260e-01
    ## cat_spSperanza_pustularia       -1.5031267  6.038053e-01
    ## [1] 0.9618781
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##      Min        1Q    Median        3Q       Max  
    ## -1.57365  -0.20899  -0.00003   0.08174   1.66081  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.673e+00  2.896e-01  -5.779 5.88e-06 ***
    ## site.delta.bird.LRR          -2.503e-01  2.409e-01  -1.039 0.309208    
    ## HostPlantBE                  -7.654e-01  4.419e-01  -1.732 0.096104 .  
    ## HostPlantHI                  -5.909e-01  3.241e-01  -1.823 0.080793 .  
    ## HostPlantRM                   5.638e-02  2.907e-01   0.194 0.847853    
    ## HostPlantRO                  -3.771e-01  3.763e-01  -1.002 0.326330    
    ## HostPlantWH                  -2.908e-01  3.196e-01  -0.910 0.371859    
    ## HostPlantWO                  -1.504e+00  5.437e-01  -2.767 0.010728 *  
    ## cat_spAmphipyra_pyramidoides -7.462e-01  6.520e-01  -1.145 0.263694    
    ## cat_spBesma_quercivoraria    -1.987e+01  1.156e+04  -0.002 0.998642    
    ## cat_spCrocidographa_normani  -9.222e-01  7.692e-01  -1.199 0.242249    
    ## cat_spEnnomos_subsignaria     8.539e-01  3.747e-01   2.279 0.031868 *  
    ## cat_spEutrapela_clemataria   -1.033e+00  1.064e+00  -0.970 0.341506    
    ## cat_spIridopsis_ephyraria    -2.054e+01  8.352e+03  -0.002 0.998058    
    ## cat_spLithophane_antennata    1.112e+00  6.831e-01   1.628 0.116689    
    ## cat_spLomographa_glomeraria  -2.550e+00  1.036e+00  -2.461 0.021453 *  
    ## cat_spLomographa_vestaliata  -2.220e+00  1.036e+00  -2.142 0.042527 *  
    ## cat_spLymantria_dispar       -3.291e+00  7.462e-01  -4.411 0.000186 ***
    ## cat_spMelanolophia_canadaria -1.659e+00  2.990e-01  -5.550 1.04e-05 ***
    ## cat_spMorrisonia_confusa     -2.103e+01  4.232e+03  -0.005 0.996077    
    ## cat_spNadata_gibbosa          1.268e+00  6.923e-01   1.832 0.079419 .  
    ## cat_spNola_triquetrana       -2.192e+01  1.143e+04  -0.002 0.998486    
    ## cat_spOrthosia_rubescens      1.854e-01  2.736e-01   0.678 0.504379    
    ## cat_spPapilio_glaucus        -2.773e+00  1.257e+00  -2.206 0.037164 *  
    ## cat_spParallelia_bistriaris  -2.095e+01  1.172e+04  -0.002 0.998588    
    ## cat_spPyreferra_hesperidago   6.946e-01  4.233e-01   1.641 0.113867    
    ## cat_spSatyrium_liparops      -7.024e-01  8.582e-01  -0.818 0.421131    
    ## cat_spSperanza_pustularia    -3.849e-01  3.625e-01  -1.062 0.298937    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 0.9751813)
    ## 
    ##     Null deviance: 310.543  on 51  degrees of freedom
    ## Residual deviance:  24.202  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 19
    ##                                      2.5 %        97.5 %
    ## (Intercept)                     -2.2669551 -1.127641e+00
    ## site.delta.bird.LRR             -0.7362887  2.206606e-01
    ## HostPlantBE                     -1.7059472  4.863726e-02
    ## HostPlantHI                     -1.2448338  3.085132e-02
    ## HostPlantRM                     -0.5196987  6.231085e-01
    ## HostPlantRO                     -1.1322151  3.504529e-01
    ## HostPlantWH                     -0.9367140  3.226097e-01
    ## HostPlantWO                     -2.7104342 -5.437472e-01
    ## cat_spAmphipyra_pyramidoides    -2.2273599  4.101538e-01
    ## cat_spBesma_quercivoraria    -5141.1631726 -3.860233e+03
    ## cat_spCrocidographa_normani     -2.7738447  3.930988e-01
    ## cat_spEnnomos_subsignaria        0.1222027  1.596710e+00
    ## cat_spEutrapela_clemataria      -3.9209332  6.792382e-01
    ## cat_spIridopsis_ephyraria    -3854.4908569 -5.407801e+03
    ## cat_spLithophane_antennata      -0.3182446  2.413054e+00
    ## cat_spLomographa_glomeraria     -5.4104642 -9.232665e-01
    ## cat_spLomographa_vestaliata     -5.0811560 -5.940230e-01
    ## cat_spLymantria_dispar          -5.1143701 -2.037416e+00
    ## cat_spMelanolophia_canadaria    -2.2406711 -1.062669e+00
    ## cat_spMorrisonia_confusa     -2013.3795730 -3.246381e+03
    ## cat_spNadata_gibbosa            -0.1147064  2.657535e+00
    ## cat_spNola_triquetrana       -9385.0419657 -8.822049e+03
    ## cat_spOrthosia_rubescens        -0.3357867  7.415569e-01
    ## cat_spPapilio_glaucus           -5.8739901 -5.631530e-01
    ## cat_spParallelia_bistriaris             NA  7.229529e+02
    ## cat_spPyreferra_hesperidago     -0.1233695  1.541176e+00
    ## cat_spSatyrium_liparops         -2.5034754  9.224514e-01
    ## cat_spSperanza_pustularia       -1.0787018  3.457953e-01
    ## [1] 0.9452615
    ## 
    ## Call:
    ## glm(formula = log(tach_prop + 1e-04) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, data = modeling_data_density, weights = 1/site.varDRR.birds)
    ## 
    ## Deviance Residuals: 
    ##    Min      1Q  Median      3Q     Max  
    ## -9.220  -1.056   0.000   1.447  11.244  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                   -1.4415     0.9105  -1.583 0.126450    
    ## site.delta.bird.LRR           -0.7223     0.6146  -1.175 0.251362    
    ## HostPlantBE                   -0.1729     0.8200  -0.211 0.834797    
    ## HostPlantHI                   -1.0933     0.7773  -1.407 0.172367    
    ## HostPlantRM                    0.2062     0.9928   0.208 0.837247    
    ## HostPlantRO                   -1.5277     0.9404  -1.625 0.117299    
    ## HostPlantWH                   -0.5005     0.9144  -0.547 0.589160    
    ## HostPlantWO                   -4.5182     0.7585  -5.956 3.79e-06 ***
    ## cat_spAmphipyra_pyramidoides  -1.3080     2.1898  -0.597 0.555878    
    ## cat_spBesma_quercivoraria     -3.0057     1.9620  -1.532 0.138614    
    ## cat_spCrocidographa_normani   -4.4015     1.7843  -2.467 0.021159 *  
    ## cat_spEnnomos_subsignaria      0.5768     2.1300   0.271 0.788863    
    ## cat_spEutrapela_clemataria    -1.2416     3.3270  -0.373 0.712282    
    ## cat_spIridopsis_ephyraria     -7.3145     3.5452  -2.063 0.050073 .  
    ## cat_spLithophane_antennata     0.6138     8.4544   0.073 0.942726    
    ## cat_spLomographa_glomeraria   -2.8251     2.1098  -1.339 0.193106    
    ## cat_spLomographa_vestaliata   -2.2334     2.6973  -0.828 0.415809    
    ## cat_spLymantria_dispar        -6.3076     1.1447  -5.510 1.15e-05 ***
    ## cat_spMelanolophia_canadaria  -2.0625     0.8314  -2.481 0.020515 *  
    ## cat_spMorrisonia_confusa      -6.3063     1.0182  -6.194 2.12e-06 ***
    ## cat_spNadata_gibbosa           3.3425     2.2867   1.462 0.156801    
    ## cat_spNola_triquetrana        -7.2498     1.5985  -4.535 0.000135 ***
    ## cat_spOrthosia_rubescens       0.2538     0.9578   0.265 0.793291    
    ## cat_spPapilio_glaucus         -4.3146     3.6133  -1.194 0.244110    
    ## cat_spParallelia_bistriaris   -7.7335     2.6409  -2.928 0.007354 ** 
    ## cat_spPyreferra_hesperidago    0.3323     2.0551   0.162 0.872916    
    ## cat_spSatyrium_liparops       -1.9762     2.6043  -0.759 0.455355    
    ## cat_spSperanza_pustularia     -0.9891     1.3284  -0.745 0.463753    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 36.63523)
    ## 
    ##     Null deviance: 7782.36  on 51  degrees of freedom
    ## Residual deviance:  879.25  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: 230.22
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                   -3.226007  0.3429691
    ## site.delta.bird.LRR           -1.926846  0.4821512
    ## HostPlantBE                   -1.779954  1.4342055
    ## HostPlantHI                   -2.616837  0.4301422
    ## HostPlantRM                   -1.739696  2.1520268
    ## HostPlantRO                   -3.370802  0.3153123
    ## HostPlantWH                   -2.292655  1.2916073
    ## HostPlantWO                   -6.004921 -3.0314839
    ## cat_spAmphipyra_pyramidoides  -5.599882  2.9838365
    ## cat_spBesma_quercivoraria     -6.851221  0.8397944
    ## cat_spCrocidographa_normani   -7.898730 -0.9042895
    ## cat_spEnnomos_subsignaria     -3.597943  4.7515416
    ## cat_spEutrapela_clemataria    -7.762352  5.2791578
    ## cat_spIridopsis_ephyraria    -14.263028 -0.3659453
    ## cat_spLithophane_antennata   -15.956486 17.1840649
    ## cat_spLomographa_glomeraria   -6.960194  1.3100429
    ## cat_spLomographa_vestaliata   -7.520012  3.0531259
    ## cat_spLymantria_dispar        -8.551186 -4.0640476
    ## cat_spMelanolophia_canadaria  -3.691986 -0.4329583
    ## cat_spMorrisonia_confusa      -8.301881 -4.3107722
    ## cat_spNadata_gibbosa          -1.139449  7.8243596
    ## cat_spNola_triquetrana       -10.382874 -4.1167052
    ## cat_spOrthosia_rubescens      -1.623520  2.1311247
    ## cat_spPapilio_glaucus        -11.396492  2.7672954
    ## cat_spParallelia_bistriaris  -12.909640 -2.5573179
    ## cat_spPyreferra_hesperidago   -3.695593  4.3600927
    ## cat_spSatyrium_liparops       -7.080541  3.1281866
    ## cat_spSperanza_pustularia     -3.592703  1.6145062
    ## [1] 0.8835029
    ## 
    ## Call:
    ## glm(formula = log(tach_prop + 1e-04) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -3.2375  -0.2835   0.0000   0.3277   3.0718  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                   -1.9643     0.8932  -2.199 0.037757 *  
    ## site.delta.bird.LRR           -0.2119     0.5025  -0.422 0.676987    
    ## HostPlantBE                    0.3830     1.0197   0.376 0.710506    
    ## HostPlantHI                   -0.4150     0.9582  -0.433 0.668790    
    ## HostPlantRM                    0.4020     1.0136   0.397 0.695128    
    ## HostPlantRO                   -1.1168     1.0136  -1.102 0.281451    
    ## HostPlantWH                   -0.3111     1.0015  -0.311 0.758752    
    ## HostPlantWO                   -1.8666     1.0743  -1.738 0.095116 .  
    ## cat_spAmphipyra_pyramidoides  -0.8898     1.3051  -0.682 0.501922    
    ## cat_spBesma_quercivoraria     -5.3076     1.7992  -2.950 0.006988 ** 
    ## cat_spCrocidographa_normani   -3.4512     1.3048  -2.645 0.014180 *  
    ## cat_spEnnomos_subsignaria      0.4244     1.2893   0.329 0.744884    
    ## cat_spEutrapela_clemataria    -1.1653     1.7449  -0.668 0.510621    
    ## cat_spIridopsis_ephyraria     -7.1890     1.2983  -5.537 1.07e-05 ***
    ## cat_spLithophane_antennata     0.3174     1.7347   0.183 0.856377    
    ## cat_spLomographa_glomeraria   -2.2946     1.7736  -1.294 0.208068    
    ## cat_spLomographa_vestaliata   -1.9790     1.7719  -1.117 0.275095    
    ## cat_spLymantria_dispar        -5.8036     0.9993  -5.807 5.48e-06 ***
    ## cat_spMelanolophia_canadaria  -2.0933     0.8197  -2.554 0.017427 *  
    ## cat_spMorrisonia_confusa      -6.7202     0.8313  -8.084 2.62e-08 ***
    ## cat_spNadata_gibbosa           1.6686     1.8254   0.914 0.369768    
    ## cat_spNola_triquetrana        -6.9295     1.7677  -3.920 0.000645 ***
    ## cat_spOrthosia_rubescens       0.0991     0.8209   0.121 0.904915    
    ## cat_spPapilio_glaucus         -2.4417     2.2980  -1.063 0.298562    
    ## cat_spParallelia_bistriaris   -7.5773     1.7571  -4.312 0.000239 ***
    ## cat_spPyreferra_hesperidago    0.7227     1.7794   0.406 0.688227    
    ## cat_spSatyrium_liparops       -0.4772     2.0821  -0.229 0.820673    
    ## cat_spSperanza_pustularia     -0.6775     1.7905  -0.378 0.708459    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 2.345571)
    ## 
    ##     Null deviance: 507.181  on 51  degrees of freedom
    ## Residual deviance:  56.294  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: 209.7
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                   -3.714991 -0.2135132
    ## site.delta.bird.LRR           -1.196800  0.7729746
    ## HostPlantBE                   -1.615582  2.3816084
    ## HostPlantHI                   -2.292997  1.4629742
    ## HostPlantRM                   -1.584515  2.3885840
    ## HostPlantRO                   -3.103431  0.8697668
    ## HostPlantWH                   -2.274019  1.6517963
    ## HostPlantWO                   -3.972188  0.2389859
    ## cat_spAmphipyra_pyramidoides  -3.447666  1.6681755
    ## cat_spBesma_quercivoraria     -8.834093 -1.7811873
    ## cat_spCrocidographa_normani   -6.008564 -0.8938677
    ## cat_spEnnomos_subsignaria     -2.102511  2.9512745
    ## cat_spEutrapela_clemataria    -4.585233  2.2546736
    ## cat_spIridopsis_ephyraria     -9.733648 -4.6444455
    ## cat_spLithophane_antennata    -3.082612  3.7173288
    ## cat_spLomographa_glomeraria   -5.770770  1.1816161
    ## cat_spLomographa_vestaliata   -5.451849  1.4938154
    ## cat_spLymantria_dispar        -7.762224 -3.8448964
    ## cat_spMelanolophia_canadaria  -3.699905 -0.4867559
    ## cat_spMorrisonia_confusa      -8.349481 -5.0909901
    ## cat_spNadata_gibbosa          -1.909194  5.2463761
    ## cat_spNola_triquetrana       -10.394266 -3.4648285
    ## cat_spOrthosia_rubescens      -1.509822  1.7080248
    ## cat_spPapilio_glaucus         -6.945714  2.0622523
    ## cat_spParallelia_bistriaris  -11.021095 -4.1334493
    ## cat_spPyreferra_hesperidago   -2.764823  4.2102396
    ## cat_spSatyrium_liparops       -4.558041  3.6036933
    ## cat_spSperanza_pustularia     -4.186737  2.8317165
    ## [1] 0.7903578
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density, 
    ##     weights = 1/site.varDRR.birds)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -6.8037  -1.4734   0.0000   0.6019   6.9788  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                    -1.98876    0.27962  -7.112 2.37e-07 ***
    ## site.delta.bird.LRR            -0.40595    0.18878  -2.150  0.04180 *  
    ## HostPlantBE                    -0.60723    0.31134  -1.950  0.06290 .  
    ## HostPlantHI                     0.41575    0.13025   3.192  0.00392 ** 
    ## HostPlantRM                     0.23871    0.22834   1.045  0.30624    
    ## HostPlantRO                    -0.14413    0.24661  -0.584  0.56436    
    ## HostPlantWH                     0.05196    0.21731   0.239  0.81307    
    ## HostPlantWO                    -0.65681    0.18801  -3.494  0.00187 ** 
    ## cat_spAmphipyra_pyramidoides    1.41145    0.51810   2.724  0.01183 *  
    ## cat_spBesma_quercivoraria       0.48062    0.72737   0.661  0.51505    
    ## cat_spCrocidographa_normani    -0.61200    0.95593  -0.640  0.52810    
    ## cat_spEnnomos_subsignaria      -1.12205    0.93603  -1.199  0.24234    
    ## cat_spEutrapela_clemataria    -17.59453 5255.72539  -0.003  0.99736    
    ## cat_spIridopsis_ephyraria      -0.71404    2.24368  -0.318  0.75305    
    ## cat_spLithophane_antennata      1.65798    2.95948   0.560  0.58052    
    ## cat_spLomographa_glomeraria    -2.23692    1.23648  -1.809  0.08298 .  
    ## cat_spLomographa_vestaliata    -1.82320    1.63019  -1.118  0.27447    
    ## cat_spLymantria_dispar         -0.67950    0.34671  -1.960  0.06173 .  
    ## cat_spMelanolophia_canadaria   -0.72917    0.27572  -2.645  0.01419 *  
    ## cat_spMorrisonia_confusa       -1.63632    0.55821  -2.931  0.00730 ** 
    ## cat_spNadata_gibbosa            0.37416    0.76274   0.491  0.62820    
    ## cat_spNola_triquetrana          0.48087    0.39334   1.223  0.23338    
    ## cat_spOrthosia_rubescens        0.42785    0.29424   1.454  0.15887    
    ## cat_spPapilio_glaucus          -2.17605    1.50351  -1.447  0.16074    
    ## cat_spParallelia_bistriaris    -1.00460    1.58713  -0.633  0.53274    
    ## cat_spPyreferra_hesperidago    -1.22215    0.65195  -1.875  0.07307 .  
    ## cat_spSatyrium_liparops       -18.53944 3460.60505  -0.005  0.99577    
    ## cat_spSperanza_pustularia      -0.61952    0.34819  -1.779  0.08787 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 14.46566)
    ## 
    ##     Null deviance: 3091.36  on 51  degrees of freedom
    ## Residual deviance:  392.86  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 16
    ##                                    2.5 %       97.5 %
    ## (Intercept)                   -2.5683402  -1.46601901
    ## site.delta.bird.LRR           -0.7703552  -0.02857073
    ## HostPlantBE                   -1.2564421  -0.02876877
    ## HostPlantHI                    0.1569329   0.66790776
    ## HostPlantRM                   -0.2271328   0.67035842
    ## HostPlantRO                   -0.6381568   0.33085158
    ## HostPlantWH                   -0.3847263   0.46809628
    ## HostPlantWO                   -1.0422589  -0.30310531
    ## cat_spAmphipyra_pyramidoides   0.3733582   2.42455862
    ## cat_spBesma_quercivoraria     -1.1778670   1.77852652
    ## cat_spCrocidographa_normani   -3.0725347   0.97342175
    ## cat_spEnnomos_subsignaria     -3.5478994   0.41448441
    ## cat_spEutrapela_clemataria            NA 625.17428704
    ## cat_spIridopsis_ephyraria    -10.6235502   2.29480337
    ## cat_spLithophane_antennata   -10.2387105   9.19733550
    ## cat_spLomographa_glomeraria   -5.9928780  -0.39654572
    ## cat_spLomographa_vestaliata   -7.7014860   0.41280179
    ## cat_spLymantria_dispar        -1.3470505   0.01801967
    ## cat_spMelanolophia_canadaria  -1.2437115  -0.15653269
    ## cat_spMorrisonia_confusa      -2.8602144  -0.62020801
    ## cat_spNadata_gibbosa          -1.3495015   1.74883527
    ## cat_spNola_triquetrana        -0.2808166   1.26609305
    ## cat_spOrthosia_rubescens      -0.1271487   1.03243941
    ## cat_spPapilio_glaucus         -6.8015778   0.18483060
    ## cat_spParallelia_bistriaris   -6.4313721   1.30007558
    ## cat_spPyreferra_hesperidago   -2.6692558  -0.04225076
    ## cat_spSatyrium_liparops               NA 246.52148745
    ## cat_spSperanza_pustularia     -1.2786460   0.09020650
    ## [1] 0.9104178
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.bird.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -1.6420  -0.4480   0.0000   0.2458   1.9024  
    ## 
    ## Coefficients:
    ##                               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                    -1.8503     0.2673  -6.923 3.69e-07 ***
    ## site.delta.bird.LRR            -0.4265     0.1702  -2.506  0.01939 *  
    ## HostPlantBE                    -0.7589     0.3521  -2.155  0.04139 *  
    ## HostPlantHI                     0.2664     0.2133   1.249  0.22358    
    ## HostPlantRM                     0.1419     0.2531   0.561  0.58009    
    ## HostPlantRO                    -0.2768     0.2735  -1.012  0.32155    
    ## HostPlantWH                    -0.2922     0.2684  -1.089  0.28713    
    ## HostPlantWO                    -0.8028     0.3541  -2.267  0.03269 *  
    ## cat_spAmphipyra_pyramidoides    1.2686     0.3619   3.505  0.00182 ** 
    ## cat_spBesma_quercivoraria       0.4951     0.7354   0.673  0.50722    
    ## cat_spCrocidographa_normani    -0.8351     0.7896  -1.058  0.30079    
    ## cat_spEnnomos_subsignaria      -1.0713     0.5813  -1.843  0.07773 .  
    ## cat_spEutrapela_clemataria    -18.6261  4471.3080  -0.004  0.99671    
    ## cat_spIridopsis_ephyraria      -0.5495     0.7923  -0.693  0.49466    
    ## cat_spLithophane_antennata      1.6414     0.6507   2.523  0.01869 *  
    ## cat_spLomographa_glomeraria    -2.3756     1.0618  -2.237  0.03481 *  
    ## cat_spLomographa_vestaliata    -1.9508     1.0640  -1.834  0.07916 .  
    ## cat_spLymantria_dispar         -0.4350     0.3213  -1.354  0.18831    
    ## cat_spMelanolophia_canadaria   -0.7337     0.2604  -2.818  0.00952 ** 
    ## cat_spMorrisonia_confusa       -1.7175     0.5226  -3.287  0.00311 ** 
    ## cat_spNadata_gibbosa            0.3634     0.6537   0.556  0.58343    
    ## cat_spNola_triquetrana          0.6871     0.4266   1.611  0.12032    
    ## cat_spOrthosia_rubescens        0.4362     0.2649   1.647  0.11269    
    ## cat_spPapilio_glaucus          -2.3688     0.9219  -2.569  0.01683 *  
    ## cat_spParallelia_bistriaris    -1.0394     1.0899  -0.954  0.34977    
    ## cat_spPyreferra_hesperidago    -1.0187     0.6100  -1.670  0.10790    
    ## cat_spSatyrium_liparops       -19.7171  4437.4066  -0.004  0.99649    
    ## cat_spSperanza_pustularia      -0.6605     0.3449  -1.915  0.06748 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 1.040415)
    ## 
    ##     Null deviance: 193.893  on 51  degrees of freedom
    ## Residual deviance:  27.497  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 17
    ##                                    2.5 %       97.5 %
    ## (Intercept)                  -2.39692497  -1.34563660
    ## site.delta.bird.LRR          -0.76551406  -0.09579946
    ## HostPlantBE                  -1.48073156  -0.09414590
    ## HostPlantHI                  -0.15444254   0.68321710
    ## HostPlantRM                  -0.36161668   0.63284767
    ## HostPlantRO                  -0.82203011   0.25255738
    ## HostPlantWH                  -0.82895637   0.22601072
    ## HostPlantWO                  -1.54332992  -0.14628800
    ## cat_spAmphipyra_pyramidoides  0.56105362   1.98508599
    ## cat_spBesma_quercivoraria    -1.12677373   1.84942728
    ## cat_spCrocidographa_normani  -2.75723575   0.50505361
    ## cat_spEnnomos_subsignaria    -2.36866597  -0.03013151
    ## cat_spEutrapela_clemataria            NA 289.70666936
    ## cat_spIridopsis_ephyraria    -2.47483664   0.79806643
    ## cat_spLithophane_antennata    0.30079029   2.89600804
    ## cat_spLomographa_glomeraria  -5.36072459  -0.73299935
    ## cat_spLomographa_vestaliata  -4.93797516  -0.30131129
    ## cat_spLymantria_dispar       -1.06052238   0.20411606
    ## cat_spMelanolophia_canadaria -1.22888920  -0.20379682
    ## cat_spMorrisonia_confusa     -2.86273968  -0.76963209
    ## cat_spNadata_gibbosa         -1.04083655   1.57971892
    ## cat_spNola_triquetrana       -0.15748690   1.52253611
    ## cat_spOrthosia_rubescens     -0.06747211   0.97516640
    ## cat_spPapilio_glaucus        -4.46814048  -0.71007502
    ## cat_spParallelia_bistriaris  -4.05189322   0.69174548
    ## cat_spPyreferra_hesperidago  -2.35866588   0.09060732
    ## cat_spSatyrium_liparops               NA 253.06190727
    ## cat_spSperanza_pustularia    -1.32397397   0.03113142
    ## [1] 0.9377179
    ## 
    ## Call:
    ## glm(formula = log(hym_prop + 1e-04) ~ site.delta.bird.LRR + HostPlant + 
    ##     cat_sp, data = modeling_data_density, weights = 1/site.varDRR.birds)
    ## 
    ## Deviance Residuals: 
    ##    Min      1Q  Median      3Q     Max  
    ## -8.684  -1.443   0.000   2.538  14.538  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                   -3.5642     1.0567  -3.373 0.002520 ** 
    ## site.delta.bird.LRR           -1.6673     0.7133  -2.338 0.028079 *  
    ## HostPlantBE                   -4.1484     0.9516  -4.359 0.000212 ***
    ## HostPlantHI                    0.4461     0.9021   0.494 0.625490    
    ## HostPlantRM                   -0.1866     1.1523  -0.162 0.872700    
    ## HostPlantRO                   -0.2216     1.0914  -0.203 0.840781    
    ## HostPlantWH                   -0.2867     1.0612  -0.270 0.789369    
    ## HostPlantWO                   -0.6073     0.8804  -0.690 0.496895    
    ## cat_spAmphipyra_pyramidoides   2.3670     2.5415   0.931 0.360940    
    ## cat_spBesma_quercivoraria      2.3400     2.2772   1.028 0.314389    
    ## cat_spCrocidographa_normani   -1.3437     2.0709  -0.649 0.522600    
    ## cat_spEnnomos_subsignaria      0.7020     2.4721   0.284 0.778883    
    ## cat_spEutrapela_clemataria    -4.6412     3.8613  -1.202 0.241102    
    ## cat_spIridopsis_ephyraria      1.5555     4.1146   0.378 0.708727    
    ## cat_spLithophane_antennata     4.5061     9.8122   0.459 0.650198    
    ## cat_spLomographa_glomeraria   -0.7168     2.4486  -0.293 0.772238    
    ## cat_spLomographa_vestaliata    0.3859     3.1305   0.123 0.902921    
    ## cat_spLymantria_dispar         1.9253     1.3286   1.449 0.160237    
    ## cat_spMelanolophia_canadaria   0.8501     0.9649   0.881 0.387075    
    ## cat_spMorrisonia_confusa      -1.4501     1.1817  -1.227 0.231666    
    ## cat_spNadata_gibbosa           0.4889     2.6540   0.184 0.855380    
    ## cat_spNola_triquetrana         2.0071     1.8553   1.082 0.290071    
    ## cat_spOrthosia_rubescens       2.4640     1.1117   2.216 0.036389 *  
    ## cat_spPapilio_glaucus         -4.0006     4.1936  -0.954 0.349610    
    ## cat_spParallelia_bistriaris    1.3657     3.0651   0.446 0.659916    
    ## cat_spPyreferra_hesperidago    0.2660     2.3851   0.112 0.912131    
    ## cat_spSatyrium_liparops       -8.8351     3.0226  -2.923 0.007446 ** 
    ## cat_spSperanza_pustularia      1.1828     1.5417   0.767 0.450464    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 49.3483)
    ## 
    ##     Null deviance: 4819.9  on 51  degrees of freedom
    ## Residual deviance: 1184.4  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: 245.71
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                    2.5 %     97.5 %
    ## (Intercept)                   -5.6352525 -1.4930596
    ## site.delta.bird.LRR           -3.0652346 -0.2693265
    ## HostPlantBE                   -6.0136194 -2.2832312
    ## HostPlantHI                   -1.3221184  2.2142386
    ## HostPlantRM                   -2.4449972  2.0717786
    ## HostPlantRO                   -2.3607147  1.9174293
    ## HostPlantWH                   -2.3666366  1.7932967
    ## HostPlantWO                   -2.3328432  1.1181605
    ## cat_spAmphipyra_pyramidoides  -2.6141491  7.3482074
    ## cat_spBesma_quercivoraria     -2.1231605  6.8031158
    ## cat_spCrocidographa_normani   -5.4026112  2.7152130
    ## cat_spEnnomos_subsignaria     -4.1432909  5.5472121
    ## cat_spEutrapela_clemataria   -12.2092501  2.9268679
    ## cat_spIridopsis_ephyraria     -6.5090696  9.6200359
    ## cat_spLithophane_antennata   -14.7255235 23.7377604
    ## cat_spLomographa_glomeraria   -5.5160775  4.0824488
    ## cat_spLomographa_vestaliata   -5.7497567  6.5215417
    ## cat_spLymantria_dispar        -0.6786387  4.5291826
    ## cat_spMelanolophia_canadaria  -1.0411615  2.7413016
    ## cat_spMorrisonia_confusa      -3.7661739  0.8659501
    ## cat_spNadata_gibbosa          -4.7127987  5.6906945
    ## cat_spNola_triquetrana        -1.6291563  5.6434270
    ## cat_spOrthosia_rubescens       0.2851496  4.6428308
    ## cat_spPapilio_glaucus        -12.2198931  4.2187525
    ## cat_spParallelia_bistriaris   -4.6418497  7.3731675
    ## cat_spPyreferra_hesperidago   -4.4087679  4.9407479
    ## cat_spSatyrium_liparops      -14.7592496 -2.9108896
    ## cat_spSperanza_pustularia     -1.8389931  4.2045505
    ## Analysis of Deviance Table
    ## 
    ## Model: gaussian, link: identity
    ## 
    ## Response: log(hym_prop + 1e-04)
    ## 
    ## Terms added sequentially (first to last)
    ## 
    ## 
    ##                     Df Deviance Resid. Df Resid. Dev      F   Pr(>F)   
    ## NULL                                   51     4819.9                   
    ## site.delta.bird.LRR  1   235.37        50     4584.5 4.7696 0.038973 * 
    ## HostPlant            6  1572.54        44     3011.9 5.3110 0.001313 **
    ## cat_sp              20  1827.59        24     1184.4 1.8517 0.075240 . 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## [1] 0.7466241
    ## 
    ## Call:
    ## glm(formula = log(hym_prop + 1e-04) ~ site.delta.bird.LRR + HostPlant + 
    ##     cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.8429  -0.7869   0.0000   0.9288   3.5570  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept)                   -3.3086     1.1979  -2.762  0.01084 * 
    ## site.delta.bird.LRR           -1.6971     0.6739  -2.518  0.01886 * 
    ## HostPlantBE                   -3.5146     1.3675  -2.570  0.01680 * 
    ## HostPlantHI                    0.6901     1.2850   0.537  0.59619   
    ## HostPlantRM                    0.4736     1.3593   0.348  0.73057   
    ## HostPlantRO                    0.4388     1.3593   0.323  0.74963   
    ## HostPlantWH                   -0.1468     1.3431  -0.109  0.91389   
    ## HostPlantWO                   -1.3108     1.4407  -0.910  0.37198   
    ## cat_spAmphipyra_pyramidoides   2.0507     1.7502   1.172  0.25282   
    ## cat_spBesma_quercivoraria      2.7980     2.4129   1.160  0.25763   
    ## cat_spCrocidographa_normani   -2.7000     1.7498  -1.543  0.13590   
    ## cat_spEnnomos_subsignaria      0.2904     1.7290   0.168  0.86803   
    ## cat_spEutrapela_clemataria    -5.5423     2.3400  -2.368  0.02626 * 
    ## cat_spIridopsis_ephyraria      1.1951     1.7411   0.686  0.49903   
    ## cat_spLithophane_antennata     3.6268     2.3264   1.559  0.13208   
    ## cat_spLomographa_glomeraria   -0.9728     2.3785  -0.409  0.68616   
    ## cat_spLomographa_vestaliata    0.1460     2.3762   0.061  0.95150   
    ## cat_spLymantria_dispar         1.3697     1.3402   1.022  0.31697   
    ## cat_spMelanolophia_canadaria   0.3209     1.0993   0.292  0.77283   
    ## cat_spMorrisonia_confusa      -2.1345     1.1148  -1.915  0.06752 . 
    ## cat_spNadata_gibbosa           0.9102     2.4480   0.372  0.71330   
    ## cat_spNola_triquetrana         1.6124     2.3707   0.680  0.50291   
    ## cat_spOrthosia_rubescens       1.9466     1.1009   1.768  0.08973 . 
    ## cat_spPapilio_glaucus         -4.3351     3.0818  -1.407  0.17234   
    ## cat_spParallelia_bistriaris    0.4599     2.3564   0.195  0.84690   
    ## cat_spPyreferra_hesperidago   -0.1328     2.3863  -0.056  0.95608   
    ## cat_spSatyrium_liparops       -9.1477     2.7922  -3.276  0.00319 **
    ## cat_spSperanza_pustularia      0.2679     2.4011   0.112  0.91208   
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 4.218393)
    ## 
    ##     Null deviance: 381.43  on 51  degrees of freedom
    ## Residual deviance: 101.24  on 24  degrees of freedom
    ##   (7 observations deleted due to missingness)
    ## AIC: 240.22
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                    2.5 %      97.5 %
    ## (Intercept)                   -5.6564549 -0.96075228
    ## site.delta.bird.LRR           -3.0179308 -0.37633825
    ## HostPlantBE                   -6.1948499 -0.83436597
    ## HostPlantHI                   -1.8284194  3.20857469
    ## HostPlantRM                   -2.1905189  3.13765760
    ## HostPlantRO                   -2.2253627  3.10294672
    ## HostPlantWH                   -2.7791451  2.48562090
    ## HostPlantWO                   -4.1344752  1.51297396
    ## cat_spAmphipyra_pyramidoides  -1.3796410  5.48102556
    ## cat_spBesma_quercivoraria     -1.9312394  7.52715177
    ## cat_spCrocidographa_normani   -6.1295970  0.72953353
    ## cat_spEnnomos_subsignaria     -3.0983368  3.67910750
    ## cat_spEutrapela_clemataria   -10.1286414 -0.95589543
    ## cat_spIridopsis_ephyraria     -2.2173491  4.60759171
    ## cat_spLithophane_antennata    -0.9327323  8.18641672
    ## cat_spLomographa_glomeraria   -5.6346148  3.68897279
    ## cat_spLomographa_vestaliata   -4.5112543  4.80331951
    ## cat_spLymantria_dispar        -1.2570225  3.99636124
    ## cat_spMelanolophia_canadaria  -1.8335838  2.47545163
    ## cat_spMorrisonia_confusa      -4.3193795  0.05046222
    ## cat_spNadata_gibbosa          -3.8878424  5.70822765
    ## cat_spNola_triquetrana        -3.0339661  6.25884608
    ## cat_spOrthosia_rubescens      -0.2110582  4.10427659
    ## cat_spPapilio_glaucus        -10.3752140  1.70503684
    ## cat_spParallelia_bistriaris   -4.1584746  5.07829265
    ## cat_spPyreferra_hesperidago   -4.8098114  4.54418703
    ## cat_spSatyrium_liparops      -14.6204215 -3.67502164
    ## cat_spSperanza_pustularia     -4.4381532  4.97403517
    ## [1] 0.4970761

    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para, Not_Para) ~ site.delta.ant.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density, 
    ##     weights = 1/site.varDRR.ants)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -7.8422  -1.6413   0.0000   0.8994  10.2981  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                    -1.15941    0.31726  -3.654  0.00181 ** 
    ## site.delta.ant.LRR              0.24303    0.41371   0.587  0.56421    
    ## HostPlantBE                    -1.26853    1.19982  -1.057  0.30438    
    ## HostPlantHI                     0.17006    0.14785   1.150  0.26510    
    ## HostPlantRM                     0.25636    0.24772   1.035  0.31443    
    ## HostPlantRO                     0.07465    0.24614   0.303  0.76515    
    ## HostPlantWH                    -0.05333    0.21928  -0.243  0.81061    
    ## HostPlantWO                    -0.70036    0.32494  -2.155  0.04492 *  
    ## cat_spAcronicta_hasta         -19.29187 3290.17489  -0.006  0.99539    
    ## cat_spAcronicta_ovata           1.65777    0.92487   1.792  0.08989 .  
    ## cat_spCrocidographa_normani    -1.34303    1.59093  -0.844  0.40965    
    ## cat_spDryocampa_rubicunda      -0.24850    1.13506  -0.219  0.82917    
    ## cat_spEnnomos_subsignaria       0.57836    0.68692   0.842  0.41085    
    ## cat_spEutrapela_clemataria     -1.77209    0.95313  -1.859  0.07942 .  
    ## cat_spIridopsis_ephyraria      -1.33976    2.37901  -0.563  0.58028    
    ## cat_spLithophane_antennata      0.97099    1.70218   0.570  0.57543    
    ## cat_spLomographa_vestaliata    -2.01995    0.93980  -2.149  0.04546 *  
    ## cat_spLymantria_dispar         -0.98045    0.40155  -2.442  0.02517 *  
    ## cat_spMelanolophia_canadaria   -1.17127    0.32041  -3.656  0.00181 ** 
    ## cat_spMorrisonia_confusa       -2.61455    0.50447  -5.183 6.26e-05 ***
    ## cat_spNadata_gibbosa            0.77392    0.79481   0.974  0.34310    
    ## cat_spNola_triquetrana          0.55792    0.40908   1.364  0.18943    
    ## cat_spOrgyia_leucostigma       -1.37911    1.29253  -1.067  0.30008    
    ## cat_spOrthosia_rubescens        0.19055    0.33987   0.561  0.58195    
    ## cat_spPapilio_glaucus          -1.78003    1.12465  -1.583  0.13089    
    ## cat_spParallelia_bistriaris    -2.00127    2.03817  -0.982  0.33917    
    ## cat_spPyreferra_hesperidago     0.05677    0.50443   0.113  0.91164    
    ## cat_spSperanza_pustularia      -0.40940    0.35482  -1.154  0.26366    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 27.41195)
    ## 
    ##     Null deviance: 9216.39  on 45  degrees of freedom
    ## Residual deviance:  444.83  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 16
    ##                                      2.5 %        97.5 %
    ## (Intercept)                     -1.8024342 -5.533242e-01
    ## site.delta.ant.LRR              -0.5519245  1.075261e+00
    ## HostPlantBE                     -4.9162730  4.907820e-01
    ## HostPlantHI                     -0.1232068  4.569241e-01
    ## HostPlantRM                     -0.2451009  7.281404e-01
    ## HostPlantRO                     -0.4308675  5.376109e-01
    ## HostPlantWH                     -0.4955827  3.655712e-01
    ## HostPlantWO                     -1.3810235 -9.893554e-02
    ## cat_spAcronicta_hasta        -1933.2010962 -2.271521e+03
    ## cat_spAcronicta_ovata           -0.2085697  3.486941e+00
    ## cat_spCrocidographa_normani     -6.6016320  1.078254e+00
    ## cat_spDryocampa_rubicunda       -3.0516514  1.776516e+00
    ## cat_spEnnomos_subsignaria       -0.8135302  1.920792e+00
    ## cat_spEutrapela_clemataria      -4.2096760 -1.867595e-01
    ## cat_spIridopsis_ephyraria      -11.9377042  2.014988e+00
    ## cat_spLithophane_antennata      -3.0739533  5.016641e+00
    ## cat_spLomographa_vestaliata     -4.2773301 -3.799381e-01
    ## cat_spLymantria_dispar          -1.7593708 -1.804084e-01
    ## cat_spMelanolophia_canadaria    -1.7834339 -5.219836e-01
    ## cat_spMorrisonia_confusa        -3.6833688 -1.675226e+00
    ## cat_spNadata_gibbosa            -0.8846572  2.291847e+00
    ## cat_spNola_triquetrana          -0.2323446  1.375246e+00
    ## cat_spOrgyia_leucostigma        -5.2354121  6.198137e-01
    ## cat_spOrthosia_rubescens        -0.4632542  8.742451e-01
    ## cat_spPapilio_glaucus           -4.7863511  6.878652e-02
    ## cat_spParallelia_bistriaris    -10.3830689  7.616564e-01
    ## cat_spPyreferra_hesperidago     -0.9539218  1.036211e+00
    ## cat_spSperanza_pustularia       -1.0875592  3.081360e-01
    ## [1] 0.9740946
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para, Not_Para) ~ site.delta.ant.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.0147  -0.2577   0.0000   0.1114   2.1303  
    ## 
    ## Coefficients:
    ##                               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                    -1.1207     0.2690  -4.166 0.000580 ***
    ## site.delta.ant.LRR              0.1062     0.2883   0.368 0.716838    
    ## HostPlantBE                    -1.0396     1.1601  -0.896 0.381990    
    ## HostPlantHI                     0.1660     0.2150   0.772 0.450011    
    ## HostPlantRM                     0.1360     0.2302   0.591 0.561945    
    ## HostPlantRO                     0.0555     0.2839   0.195 0.847194    
    ## HostPlantWH                    -0.3190     0.2380  -1.340 0.196843    
    ## HostPlantWO                    -0.4503     0.2686  -1.677 0.110848    
    ## cat_spAcronicta_hasta         -19.3095  2938.0141  -0.007 0.994828    
    ## cat_spAcronicta_ovata           1.3208     0.6198   2.131 0.047116 *  
    ## cat_spCrocidographa_normani    -1.2643     0.8858  -1.427 0.170619    
    ## cat_spDryocampa_rubicunda      -0.2318     0.4265  -0.543 0.593466    
    ## cat_spEnnomos_subsignaria       0.6343     0.3957   1.603 0.126326    
    ## cat_spEutrapela_clemataria     -1.8137     0.7207  -2.517 0.021555 *  
    ## cat_spIridopsis_ephyraria      -1.1302     0.7461  -1.515 0.147183    
    ## cat_spLithophane_antennata      1.0144     0.6087   1.667 0.112883    
    ## cat_spLomographa_vestaliata    -2.1447     0.8939  -2.399 0.027461 *  
    ## cat_spLymantria_dispar         -0.6922     0.3260  -2.123 0.047859 *  
    ## cat_spMelanolophia_canadaria   -1.1774     0.2660  -4.427 0.000325 ***
    ## cat_spMorrisonia_confusa       -2.7575     0.5657  -4.875 0.000122 ***
    ## cat_spNadata_gibbosa            0.4780     0.5515   0.867 0.397429    
    ## cat_spNola_triquetrana          0.7887     0.3681   2.143 0.046069 *  
    ## cat_spOrgyia_leucostigma       -1.5019     0.8667  -1.733 0.100206    
    ## cat_spOrthosia_rubescens        0.1581     0.2804   0.564 0.579724    
    ## cat_spPapilio_glaucus          -1.6758     0.7524  -2.227 0.038933 *  
    ## cat_spParallelia_bistriaris    -1.9117     1.1948  -1.600 0.126984    
    ## cat_spPyreferra_hesperidago     0.3160     0.3681   0.858 0.401931    
    ## cat_spSperanza_pustularia      -0.3299     0.2980  -1.107 0.282830    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 1.278874)
    ## 
    ##     Null deviance: 335.770  on 45  degrees of freedom
    ## Residual deviance:  23.273  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 16
    ##                                      2.5 %      97.5 %
    ## (Intercept)                  -1.661520e+00 -0.60415745
    ## site.delta.ant.LRR           -4.540272e-01  0.68220204
    ## HostPlantBE                  -4.489279e+00  0.68921168
    ## HostPlantHI                  -2.600739e-01  0.58426478
    ## HostPlantRM                  -3.196126e-01  0.58408042
    ## HostPlantRO                  -5.183425e-01  0.59762663
    ## HostPlantWH                  -7.939019e-01  0.14080303
    ## HostPlantWO                  -9.950629e-01  0.06160324
    ## cat_spAcronicta_hasta        -1.214253e+03 98.31620233
    ## cat_spAcronicta_ovata         8.604233e-02  2.53862359
    ## cat_spCrocidographa_normani  -3.468216e+00  0.23241550
    ## cat_spDryocampa_rubicunda    -1.076994e+00  0.60053251
    ## cat_spEnnomos_subsignaria    -1.401991e-01  1.41478434
    ## cat_spEutrapela_clemataria   -3.520909e+00 -0.57289690
    ## cat_spIridopsis_ephyraria    -2.875444e+00  0.16637398
    ## cat_spLithophane_antennata   -1.922235e-01  2.22685784
    ## cat_spLomographa_vestaliata  -4.359522e+00 -0.63306797
    ## cat_spLymantria_dispar       -1.331289e+00 -0.04933265
    ## cat_spMelanolophia_canadaria -1.690368e+00 -0.64457826
    ## cat_spMorrisonia_confusa     -4.027974e+00 -1.75335926
    ## cat_spNadata_gibbosa         -6.453054e-01  1.53672802
    ## cat_spNola_triquetrana        7.022625e-02  1.51672396
    ## cat_spOrgyia_leucostigma     -3.683876e+00 -0.06010366
    ## cat_spOrthosia_rubescens     -3.823392e-01  0.71953365
    ## cat_spPapilio_glaucus        -3.425480e+00 -0.35700673
    ## cat_spParallelia_bistriaris  -5.391536e+00 -0.06770966
    ## cat_spPyreferra_hesperidago  -4.055152e-01  1.04162227
    ## cat_spSperanza_pustularia    -9.035368e-01  0.26724096
    ## [1] 0.9700925
    ## 
    ## Call:
    ## glm(formula = log(para_prop + 1e-04) ~ site.delta.ant.LRR + HostPlant + 
    ##     cat_sp, data = modeling_data_density, weights = 1/site.varDRR.ants)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -12.278   -1.595    0.000    1.687   14.664  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept)                   -1.8848     1.3439  -1.402  0.17779   
    ## site.delta.ant.LRR             1.3692     1.4893   0.919  0.37004   
    ## HostPlantBE                   -2.2729     1.3157  -1.727  0.10121   
    ## HostPlantHI                    0.7938     0.9284   0.855  0.40375   
    ## HostPlantRM                   -0.3331     1.1935  -0.279  0.78335   
    ## HostPlantRO                    0.7408     1.1286   0.656  0.51988   
    ## HostPlantWH                   -0.7197     1.1253  -0.640  0.53050   
    ## HostPlantWO                   -0.0444     1.1638  -0.038  0.96999   
    ## cat_spAcronicta_hasta         -7.5362     2.3327  -3.231  0.00464 **
    ## cat_spAcronicta_ovata          1.5649     3.1131   0.503  0.62128   
    ## cat_spCrocidographa_normani   -0.1030     3.5009  -0.029  0.97685   
    ## cat_spDryocampa_rubicunda      1.3535     6.5646   0.206  0.83897   
    ## cat_spEnnomos_subsignaria      1.5802     3.9647   0.399  0.69490   
    ## cat_spEutrapela_clemataria    -0.7866     2.2228  -0.354  0.72755   
    ## cat_spIridopsis_ephyraria     -0.3639     4.3411  -0.084  0.93413   
    ## cat_spLithophane_antennata     1.9078     5.5833   0.342  0.73654   
    ## cat_spLomographa_vestaliata   -0.6184     2.4857  -0.249  0.80634   
    ## cat_spLymantria_dispar         0.2596     1.6665   0.156  0.87792   
    ## cat_spMelanolophia_canadaria  -0.6673     1.2995  -0.514  0.61382   
    ## cat_spMorrisonia_confusa      -4.1532     1.3325  -3.117  0.00595 **
    ## cat_spNadata_gibbosa           0.6153     2.9677   0.207  0.83809   
    ## cat_spNola_triquetrana         1.4978     2.0189   0.742  0.46772   
    ## cat_spOrgyia_leucostigma      -4.0846     2.3492  -1.739  0.09916 . 
    ## cat_spOrthosia_rubescens       0.4829     1.5108   0.320  0.75291   
    ## cat_spPapilio_glaucus         -2.2954     3.2137  -0.714  0.48422   
    ## cat_spParallelia_bistriaris   -0.8032     3.3143  -0.242  0.81126   
    ## cat_spPyreferra_hesperidago    0.8955     3.0512   0.293  0.77250   
    ## cat_spSperanza_pustularia      0.6864     1.7232   0.398  0.69507   
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 63.62998)
    ## 
    ##     Null deviance: 5492.0  on 45  degrees of freedom
    ## Residual deviance: 1145.3  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: 216.94
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                   -4.518894  0.7492443
    ## site.delta.ant.LRR            -1.549660  4.2881363
    ## HostPlantBE                   -4.851673  0.3059571
    ## HostPlantHI                   -1.025765  2.6134276
    ## HostPlantRM                   -2.672322  2.0060983
    ## HostPlantRO                   -1.471218  2.9528348
    ## HostPlantWH                   -2.925252  1.4858250
    ## HostPlantWO                   -2.325344  2.2365486
    ## cat_spAcronicta_hasta        -12.108232 -2.9641967
    ## cat_spAcronicta_ovata         -4.536582  7.6663799
    ## cat_spCrocidographa_normani   -6.964734  6.7587031
    ## cat_spDryocampa_rubicunda    -11.512989 14.2199144
    ## cat_spEnnomos_subsignaria     -6.190409  9.3508089
    ## cat_spEutrapela_clemataria    -5.143125  3.5699739
    ## cat_spIridopsis_ephyraria     -8.872265  8.1445270
    ## cat_spLithophane_antennata    -9.035290 12.8508177
    ## cat_spLomographa_vestaliata   -5.490275  4.2534386
    ## cat_spLymantria_dispar        -3.006695  3.5259850
    ## cat_spMelanolophia_canadaria  -3.214235  1.8795855
    ## cat_spMorrisonia_confusa      -6.764841 -1.5416400
    ## cat_spNadata_gibbosa          -5.201337  6.4318492
    ## cat_spNola_triquetrana        -2.459172  5.4548636
    ## cat_spOrgyia_leucostigma      -8.688873  0.5197171
    ## cat_spOrthosia_rubescens      -2.478115  3.4439535
    ## cat_spPapilio_glaucus         -8.594180  4.0033037
    ## cat_spParallelia_bistriaris   -7.299080  5.6927626
    ## cat_spPyreferra_hesperidago   -5.084697  6.8757055
    ## cat_spSperanza_pustularia     -2.691008  4.0638390
    ## [1] 0.7853611
    ## 
    ## Call:
    ## glm(formula = log(para_prop + 1e-04) ~ site.delta.ant.LRR + HostPlant + 
    ##     cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -3.2556  -0.2666   0.0000   0.2667   3.9174  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                   -1.3237     1.2502  -1.059 0.303692    
    ## site.delta.ant.LRR             0.3476     1.0691   0.325 0.748841    
    ## HostPlantBE                   -1.7449     1.7019  -1.025 0.318822    
    ## HostPlantHI                    0.7100     1.3067   0.543 0.593578    
    ## HostPlantRM                   -0.4669     1.1467  -0.407 0.688676    
    ## HostPlantRO                    0.7688     1.4507   0.530 0.602637    
    ## HostPlantWH                   -0.8763     1.2686  -0.691 0.498554    
    ## HostPlantWO                   -0.4400     1.2554  -0.350 0.730037    
    ## cat_spAcronicta_hasta         -7.9401     2.2936  -3.462 0.002782 ** 
    ## cat_spAcronicta_ovata          1.0392     2.4335   0.427 0.674422    
    ## cat_spCrocidographa_normani   -0.5522     2.2800  -0.242 0.811364    
    ## cat_spDryocampa_rubicunda      0.4410     2.3689   0.186 0.854393    
    ## cat_spEnnomos_subsignaria      0.9608     2.3013   0.418 0.681228    
    ## cat_spEutrapela_clemataria    -1.3285     1.7643  -0.753 0.461203    
    ## cat_spIridopsis_ephyraria     -0.5276     1.7578  -0.300 0.767501    
    ## cat_spLithophane_antennata     1.1949     2.3187   0.515 0.612597    
    ## cat_spLomographa_vestaliata   -1.8221     2.4721  -0.737 0.470580    
    ## cat_spLymantria_dispar        -0.1915     1.5504  -0.124 0.903052    
    ## cat_spMelanolophia_canadaria  -0.9848     1.2688  -0.776 0.447702    
    ## cat_spMorrisonia_confusa      -5.2256     1.2666  -4.126 0.000635 ***
    ## cat_spNadata_gibbosa           0.3961     2.4005   0.165 0.870783    
    ## cat_spNola_triquetrana         1.1218     2.2894   0.490 0.630047    
    ## cat_spOrgyia_leucostigma      -4.2921     1.8354  -2.339 0.031097 *  
    ## cat_spOrthosia_rubescens       0.1022     1.3352   0.077 0.939803    
    ## cat_spPapilio_glaucus         -1.7893     2.4488  -0.731 0.474362    
    ## cat_spParallelia_bistriaris   -1.1718     2.2748  -0.515 0.612725    
    ## cat_spPyreferra_hesperidago    0.7321     2.3131   0.316 0.755273    
    ## cat_spSperanza_pustularia      0.2428     2.2796   0.107 0.916355    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 3.75411)
    ## 
    ##     Null deviance: 295.605  on 45  degrees of freedom
    ## Residual deviance:  67.574  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: 206.23
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                   -3.774069  1.1266319
    ## site.delta.ant.LRR            -1.747774  2.4429239
    ## HostPlantBE                   -5.080474  1.5907463
    ## HostPlantHI                   -1.851169  3.2710989
    ## HostPlantRM                   -2.714465  1.7806137
    ## HostPlantRO                   -2.074545  3.6120753
    ## HostPlantWH                   -3.362764  1.6102181
    ## HostPlantWO                   -2.900472  2.0204780
    ## cat_spAcronicta_hasta        -12.435449 -3.4447647
    ## cat_spAcronicta_ovata         -3.730459  5.8088439
    ## cat_spCrocidographa_normani   -5.021032  3.9165814
    ## cat_spDryocampa_rubicunda     -4.201968  5.0840120
    ## cat_spEnnomos_subsignaria     -3.549524  5.4712145
    ## cat_spEutrapela_clemataria    -4.786507  2.1295337
    ## cat_spIridopsis_ephyraria     -3.972722  2.9175400
    ## cat_spLithophane_antennata    -3.349626  5.7393508
    ## cat_spLomographa_vestaliata   -6.667235  3.0230737
    ## cat_spLymantria_dispar        -3.230196  2.8471457
    ## cat_spMelanolophia_canadaria  -3.471595  1.5019091
    ## cat_spMorrisonia_confusa      -7.707998 -2.7431476
    ## cat_spNadata_gibbosa          -4.308782  5.1009412
    ## cat_spNola_triquetrana        -3.365297  5.6089377
    ## cat_spOrgyia_leucostigma      -7.889310 -0.6948564
    ## cat_spOrthosia_rubescens      -2.514616  2.7191055
    ## cat_spPapilio_glaucus         -6.588791  3.0101418
    ## cat_spParallelia_bistriaris   -5.630369  3.2866948
    ## cat_spPyreferra_hesperidago   -3.801536  5.2656759
    ## cat_spSperanza_pustularia     -4.225094  4.7106978
    ## [1] 0.6066942
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.ant.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density, 
    ##     weights = 1/site.varDRR.ants)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -7.1130  -0.0003  -0.0001   0.0000   7.8367  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                     -2.1304     0.5298  -4.021 0.000802 ***
    ## site.delta.ant.LRR               1.2775     0.8378   1.525 0.144681    
    ## HostPlantBE                      0.1380     1.2245   0.113 0.911495    
    ## HostPlantHI                     -0.5129     0.2844  -1.803 0.088159 .  
    ## HostPlantRM                      0.2632     0.4584   0.574 0.572888    
    ## HostPlantRO                     -0.8621     0.5619  -1.534 0.142397    
    ## HostPlantWH                     -0.1342     0.3574  -0.376 0.711638    
    ## HostPlantWO                     -3.2205     1.5089  -2.134 0.046828 *  
    ## cat_spAcronicta_hasta          -22.4801 24575.7939  -0.001 0.999280    
    ## cat_spAcronicta_ovata          -17.4799 33314.0539  -0.001 0.999587    
    ## cat_spCrocidographa_normani     -0.3568     1.6662  -0.214 0.832857    
    ## cat_spDryocampa_rubicunda      -22.5001 80264.3728   0.000 0.999779    
    ## cat_spEnnomos_subsignaria        1.2028     0.9166   1.312 0.205921    
    ## cat_spEutrapela_clemataria      -2.7268     2.5937  -1.051 0.307022    
    ## cat_spIridopsis_ephyraria      -22.0583 43836.3417  -0.001 0.999604    
    ## cat_spLithophane_antennata       1.4133     2.2268   0.635 0.533617    
    ## cat_spLomographa_vestaliata     -1.0915     1.4702  -0.742 0.467389    
    ## cat_spLymantria_dispar         -22.9692 11460.3401  -0.002 0.998423    
    ## cat_spMelanolophia_canadaria    -1.2310     0.5465  -2.252 0.037020 *  
    ## cat_spMorrisonia_confusa       -21.9056  6863.1995  -0.003 0.997488    
    ## cat_spNadata_gibbosa             3.7315     1.8545   2.012 0.059420 .  
    ## cat_spNola_triquetrana         -22.6583 17696.9291  -0.001 0.998993    
    ## cat_spOrgyia_leucostigma       -21.2297 21069.8188  -0.001 0.999207    
    ## cat_spOrthosia_rubescens         0.7137     0.5586   1.278 0.217577    
    ## cat_spPapilio_glaucus           -2.9883     1.9325  -1.546 0.139425    
    ## cat_spParallelia_bistriaris    -21.8594 38656.9218  -0.001 0.999555    
    ## cat_spPyreferra_hesperidago      0.7214     0.6738   1.071 0.298482    
    ## cat_spSperanza_pustularia       -0.1220     0.5661  -0.215 0.831862    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 28.01168)
    ## 
    ##     Null deviance: 8449.5  on 45  degrees of freedom
    ## Residual deviance:  259.9  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 20
    ##                                      2.5 %        97.5 %
    ## (Intercept)                  -3.245063e+00 -1.144551e+00
    ## site.delta.ant.LRR           -3.380395e-01  2.968396e+00
    ## HostPlantBE                  -3.578948e+00  1.954942e+00
    ## HostPlantHI                  -1.093527e+00  2.616099e-02
    ## HostPlantRM                  -6.982399e-01  1.108631e+00
    ## HostPlantRO                  -2.099271e+00  1.260912e-01
    ## HostPlantWH                  -8.921759e-01  5.233627e-01
    ## HostPlantWO                  -8.335891e+00 -1.100944e+00
    ## cat_spAcronicta_hasta        -1.065167e+04  8.458124e+02
    ## cat_spAcronicta_ovata                   NA  2.813456e+03
    ## cat_spCrocidographa_normani  -5.747656e+00  2.273558e+00
    ## cat_spDryocampa_rubicunda               NA  9.995197e+03
    ## cat_spEnnomos_subsignaria    -6.875714e-01  2.988257e+00
    ## cat_spEutrapela_clemataria              NA  4.486917e-01
    ## cat_spIridopsis_ephyraria               NA  7.725027e+03
    ## cat_spLithophane_antennata   -5.920304e+00  5.914470e+00
    ## cat_spLomographa_vestaliata  -4.852483e+00  1.509959e+00
    ## cat_spLymantria_dispar       -4.970779e+03  3.835553e+02
    ## cat_spMelanolophia_canadaria -2.250848e+00 -8.481901e-02
    ## cat_spMorrisonia_confusa     -3.253654e+03 -4.461280e+03
    ## cat_spNadata_gibbosa          5.035891e-01  9.113232e+00
    ## cat_spNola_triquetrana       -7.553581e+03  6.250555e+02
    ## cat_spOrgyia_leucostigma     -9.204671e+03  7.103117e+02
    ## cat_spOrthosia_rubescens     -3.288642e-01  1.882369e+00
    ## cat_spPapilio_glaucus        -1.005263e+01 -1.253066e-01
    ## cat_spParallelia_bistriaris             NA  4.529213e+03
    ## cat_spPyreferra_hesperidago  -5.793735e-01  2.089566e+00
    ## cat_spSperanza_pustularia    -1.162313e+00  1.075118e+00
    ## [1] 0.9710776
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.ant.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##      Min        1Q    Median        3Q       Max  
    ## -1.88354  -0.00005  -0.00003   0.00000   1.37017  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                     -1.9728     0.3289  -5.998 1.13e-05 ***
    ## site.delta.ant.LRR               0.5414     0.4928   1.099 0.286440    
    ## HostPlantBE                      0.2747     0.9242   0.297 0.769668    
    ## HostPlantHI                     -0.3422     0.2901  -1.180 0.253505    
    ## HostPlantRM                      0.1137     0.3211   0.354 0.727455    
    ## HostPlantRO                     -0.2826     0.3850  -0.734 0.472388    
    ## HostPlantWH                     -0.1815     0.2943  -0.617 0.545049    
    ## HostPlantWO                     -1.3282     0.5449  -2.438 0.025382 *  
    ## cat_spAcronicta_hasta          -22.5243 16978.0234  -0.001 0.998956    
    ## cat_spAcronicta_ovata          -19.7892 17593.3609  -0.001 0.999115    
    ## cat_spCrocidographa_normani     -0.3805     0.7358  -0.517 0.611335    
    ## cat_spDryocampa_rubicunda      -22.8576 16861.2459  -0.001 0.998933    
    ## cat_spEnnomos_subsignaria        1.0565     0.4241   2.491 0.022726 *  
    ## cat_spEutrapela_clemataria      -1.9912     0.9492  -2.098 0.050299 .  
    ## cat_spIridopsis_ephyraria      -21.5661 11042.4517  -0.002 0.998463    
    ## cat_spLithophane_antennata       1.1996     0.6378   1.881 0.076287 .  
    ## cat_spLomographa_vestaliata     -1.7120     1.0495  -1.631 0.120200    
    ## cat_spLymantria_dispar         -22.7978  9039.1464  -0.003 0.998015    
    ## cat_spMelanolophia_canadaria    -1.4746     0.3354  -4.397 0.000348 ***
    ## cat_spMorrisonia_confusa       -22.1793  6293.1869  -0.004 0.997227    
    ## cat_spNadata_gibbosa             1.6431     0.7385   2.225 0.039123 *  
    ## cat_spNola_triquetrana         -22.7480 16875.1826  -0.001 0.998939    
    ## cat_spOrgyia_leucostigma       -21.2919 11756.8346  -0.002 0.998575    
    ## cat_spOrthosia_rubescens         0.3819     0.3388   1.127 0.274512    
    ## cat_spPapilio_glaucus           -2.3769     1.0027  -2.370 0.029141 *  
    ## cat_spParallelia_bistriaris    -21.8251 17302.1469  -0.001 0.999007    
    ## cat_spPyreferra_hesperidago      0.7849     0.3772   2.081 0.051997 .  
    ## cat_spSperanza_pustularia       -0.1417     0.3480  -0.407 0.688723    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 0.7821971)
    ## 
    ##     Null deviance: 310.85  on 45  degrees of freedom
    ## Residual deviance:  15.57  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 20
    ##                                      2.5 %        97.5 %
    ## (Intercept)                  -2.639294e+00 -1.344339e+00
    ## site.delta.ant.LRR           -4.159224e-01  1.538949e+00
    ## HostPlantBE                  -2.179784e+00  1.747408e+00
    ## HostPlantHI                  -9.312925e-01  2.117011e-01
    ## HostPlantRM                  -5.278606e-01  7.362345e-01
    ## HostPlantRO                  -1.072413e+00  4.406877e-01
    ## HostPlantWH                  -7.768562e-01  3.812562e-01
    ## HostPlantWO                  -2.576852e+00 -3.827247e-01
    ## cat_spAcronicta_hasta        -1.111650e+04 -1.158514e+04
    ## cat_spAcronicta_ovata        -7.725161e+03 -6.505470e+01
    ## cat_spCrocidographa_normani  -2.060501e+00  9.317599e-01
    ## cat_spDryocampa_rubicunda    -7.410111e+03 -1.156943e+02
    ## cat_spEnnomos_subsignaria     2.338844e-01  1.901854e+00
    ## cat_spEutrapela_clemataria   -4.473025e+00 -4.465791e-01
    ## cat_spIridopsis_ephyraria    -5.337760e+03 -9.040249e+03
    ## cat_spLithophane_antennata   -1.114636e-01  2.425298e+00
    ## cat_spLomographa_vestaliata  -4.307537e+00  1.024404e-01
    ## cat_spLymantria_dispar       -3.981030e+03 -3.340627e+01
    ## cat_spMelanolophia_canadaria -2.123639e+00 -8.016992e-01
    ## cat_spMorrisonia_confusa     -2.830801e+03 -1.064012e+03
    ## cat_spNadata_gibbosa          2.276199e-01  3.185042e+00
    ## cat_spNola_triquetrana       -8.037568e+03 -1.228162e+04
    ## cat_spOrgyia_leucostigma     -5.291921e+03 -2.429744e+03
    ## cat_spOrthosia_rubescens     -2.636302e-01  1.069326e+00
    ## cat_spPapilio_glaucus        -4.918839e+00 -6.891809e-01
    ## cat_spParallelia_bistriaris  -8.242574e+03 -1.265240e+04
    ## cat_spPyreferra_hesperidago   6.174077e-02  1.545685e+00
    ## cat_spSperanza_pustularia    -8.015703e-01  5.666348e-01
    ## [1] 0.9661248
    ## 
    ## Call:
    ## glm(formula = log(tach_prop + 1e-04) ~ site.delta.ant.LRR + HostPlant + 
    ##     cat_sp, data = modeling_data_density, weights = 1/site.varDRR.ants)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -13.593   -1.566    0.000    1.345   10.474  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.9344151  0.9978021  -1.939 0.068384 .  
    ## site.delta.ant.LRR           -0.8247575  1.1056973  -0.746 0.465349    
    ## HostPlantBE                  -0.4182947  0.9768715  -0.428 0.673587    
    ## HostPlantHI                  -0.5398585  0.6892747  -0.783 0.443678    
    ## HostPlantRM                   0.1993749  0.8861077   0.225 0.824513    
    ## HostPlantRO                  -0.5680901  0.8379296  -0.678 0.506414    
    ## HostPlantWH                  -0.1078841  0.8354721  -0.129 0.898687    
    ## HostPlantWO                  -2.4849492  0.8640370  -2.876 0.010053 *  
    ## cat_spAcronicta_hasta        -7.1490114  1.7319094  -4.128 0.000632 ***
    ## cat_spAcronicta_ovata        -5.0817540  2.3112799  -2.199 0.041217 *  
    ## cat_spCrocidographa_normani  -0.6329788  2.5992627  -0.244 0.810354    
    ## cat_spDryocampa_rubicunda    -7.8669458  4.8738938  -1.614 0.123899    
    ## cat_spEnnomos_subsignaria     0.1509452  2.9435561   0.051 0.959667    
    ## cat_spEutrapela_clemataria   -6.0849624  1.6502886  -3.687 0.001686 ** 
    ## cat_spIridopsis_ephyraria    -7.1087634  3.2230345  -2.206 0.040651 *  
    ## cat_spLithophane_antennata    0.0008493  4.1452985   0.000 0.999839    
    ## cat_spLomographa_vestaliata  -2.6389607  1.8454904  -1.430 0.169860    
    ## cat_spLymantria_dispar       -7.0280818  1.2373105  -5.680 2.18e-05 ***
    ## cat_spMelanolophia_canadaria -1.9873894  0.9647859  -2.060 0.054166 .  
    ## cat_spMorrisonia_confusa     -6.4920186  0.9892910  -6.562 3.64e-06 ***
    ## cat_spNadata_gibbosa          2.4026773  2.2033626   1.090 0.289894    
    ## cat_spNola_triquetrana       -7.1450168  1.4989435  -4.767 0.000154 ***
    ## cat_spOrgyia_leucostigma     -5.7579531  1.7441364  -3.301 0.003970 ** 
    ## cat_spOrthosia_rubescens      0.1624657  1.1216586   0.145 0.886443    
    ## cat_spPapilio_glaucus        -1.0495099  2.3860034  -0.440 0.665274    
    ## cat_spParallelia_bistriaris  -7.4279831  2.4606963  -3.019 0.007380 ** 
    ## cat_spPyreferra_hesperidago   0.7080078  2.2653382   0.313 0.758222    
    ## cat_spSperanza_pustularia    -0.5242055  1.2793895  -0.410 0.686838    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 35.07458)
    ## 
    ##     Null deviance: 9222.45  on 45  degrees of freedom
    ## Residual deviance:  631.34  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: 189.54
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %      97.5 %
    ## (Intercept)                   -3.890071  0.02124101
    ## site.delta.ant.LRR            -2.991884  1.34236938
    ## HostPlantBE                   -2.332928  1.49633824
    ## HostPlantHI                   -1.890812  0.81109506
    ## HostPlantRM                   -1.537364  1.93611415
    ## HostPlantRO                   -2.210402  1.07422179
    ## HostPlantWH                   -1.745379  1.52961109
    ## HostPlantWO                   -4.178431 -0.79146781
    ## cat_spAcronicta_hasta        -10.543491 -3.75453131
    ## cat_spAcronicta_ovata         -9.611779 -0.55172862
    ## cat_spCrocidographa_normani   -5.727440  4.46148257
    ## cat_spDryocampa_rubicunda    -17.419602  1.68571050
    ## cat_spEnnomos_subsignaria     -5.618319  5.92020914
    ## cat_spEutrapela_clemataria    -9.319469 -2.85045612
    ## cat_spIridopsis_ephyraria    -13.425795 -0.79173178
    ## cat_spLithophane_antennata    -8.123786  8.12548503
    ## cat_spLomographa_vestaliata   -6.256055  0.97813402
    ## cat_spLymantria_dispar        -9.453166 -4.60299786
    ## cat_spMelanolophia_canadaria  -3.878335 -0.09644381
    ## cat_spMorrisonia_confusa      -8.430993 -4.55304390
    ## cat_spNadata_gibbosa          -1.915834  6.72118859
    ## cat_spNola_triquetrana       -10.082892 -4.20714163
    ## cat_spOrgyia_leucostigma      -9.176398 -2.33950865
    ## cat_spOrthosia_rubescens      -2.035945  2.36087606
    ## cat_spPapilio_glaucus         -5.725991  3.62697096
    ## cat_spParallelia_bistriaris  -12.250859 -2.60510690
    ## cat_spPyreferra_hesperidago   -3.731974  5.14798920
    ## cat_spSperanza_pustularia     -3.031763  1.98335180
    ## Analysis of Deviance Table
    ## 
    ## Model: gaussian, link: identity
    ## 
    ## Response: log(tach_prop + 1e-04)
    ## 
    ## Terms added sequentially (first to last)
    ## 
    ## 
    ##                    Df Deviance Resid. Df Resid. Dev       F    Pr(>F)    
    ## NULL                                  45     9222.4                      
    ## site.delta.ant.LRR  1    485.0        44     8737.5 13.8266 0.0015728 ** 
    ## HostPlant           6   1515.6        38     7221.9  7.2019 0.0004896 ***
    ## cat_sp             20   6590.5        18      631.3  9.3950 6.954e-06 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## [1] 0.9295429
    ## 
    ## Call:
    ## glm(formula = log(tach_prop + 1e-04) ~ site.delta.ant.LRR + HostPlant + 
    ##     cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -3.3571  -0.2064   0.0000   0.3323   2.6417  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -2.74703    0.93694  -2.932 0.008909 ** 
    ## site.delta.ant.LRR           -0.19955    0.80120  -0.249 0.806135    
    ## HostPlantBE                   0.97153    1.27544   0.762 0.456090    
    ## HostPlantHI                   0.28056    0.97930   0.286 0.777771    
    ## HostPlantRM                   1.13642    0.85939   1.322 0.202609    
    ## HostPlantRO                   0.43961    1.08720   0.404 0.690719    
    ## HostPlantWH                   0.47316    0.95076   0.498 0.624743    
    ## HostPlantWO                  -0.93178    0.94081  -0.990 0.335106    
    ## cat_spAcronicta_hasta        -6.43260    1.71888  -3.742 0.001491 ** 
    ## cat_spAcronicta_ovata        -5.60188    1.82377  -3.072 0.006575 ** 
    ## cat_spCrocidographa_normani  -0.74399    1.70874  -0.435 0.668446    
    ## cat_spDryocampa_rubicunda    -7.69448    1.77534  -4.334 0.000400 ***
    ## cat_spEnnomos_subsignaria     0.14406    1.72463   0.084 0.934353    
    ## cat_spEutrapela_clemataria   -3.86465    1.32224  -2.923 0.009086 ** 
    ## cat_spIridopsis_ephyraria    -7.21178    1.31732  -5.475 3.36e-05 ***
    ## cat_spLithophane_antennata    0.05121    1.73768   0.029 0.976816    
    ## cat_spLomographa_vestaliata  -1.43313    1.85264  -0.774 0.449233    
    ## cat_spLymantria_dispar       -6.68949    1.16190  -5.757 1.86e-05 ***
    ## cat_spMelanolophia_canadaria -2.08518    0.95086  -2.193 0.041691 *  
    ## cat_spMorrisonia_confusa     -6.77187    0.94921  -7.134 1.20e-06 ***
    ## cat_spNadata_gibbosa          1.69497    1.79900   0.942 0.358578    
    ## cat_spNola_triquetrana       -6.93090    1.71574  -4.040 0.000769 ***
    ## cat_spOrgyia_leucostigma     -5.90497    1.37547  -4.293 0.000438 ***
    ## cat_spOrthosia_rubescens      0.28716    1.00061   0.287 0.777401    
    ## cat_spPapilio_glaucus        -0.88998    1.83517  -0.485 0.633556    
    ## cat_spParallelia_bistriaris  -7.58828    1.70481  -4.451 0.000309 ***
    ## cat_spPyreferra_hesperidago   0.79203    1.73352   0.457 0.653214    
    ## cat_spSperanza_pustularia    -0.63864    1.70839  -0.374 0.712901    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 2.108489)
    ## 
    ##     Null deviance: 510.955  on 45  degrees of freedom
    ## Residual deviance:  37.953  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: 179.7
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                    2.5 %     97.5 %
    ## (Intercept)                   -4.5834047 -0.9106639
    ## site.delta.ant.LRR            -1.7698663  1.3707760
    ## HostPlantBE                   -1.5282799  3.4713446
    ## HostPlantHI                   -1.6388306  2.1999601
    ## HostPlantRM                   -0.5479599  2.8207950
    ## HostPlantRO                   -1.6912585  2.5704753
    ## HostPlantWH                   -1.3902924  2.3366188
    ## HostPlantWO                   -2.7757390  0.9121773
    ## cat_spAcronicta_hasta         -9.8015522 -3.0636478
    ## cat_spAcronicta_ovata         -9.1764055 -2.0273489
    ## cat_spCrocidographa_normani   -4.0930555  2.6050759
    ## cat_spDryocampa_rubicunda    -11.1740843 -4.2148756
    ## cat_spEnnomos_subsignaria     -3.2361586  3.5242692
    ## cat_spEutrapela_clemataria    -6.4562021 -1.2731016
    ## cat_spIridopsis_ephyraria     -9.7936713 -4.6298897
    ## cat_spLithophane_antennata    -3.3545781  3.4569897
    ## cat_spLomographa_vestaliata   -5.0642384  2.1979869
    ## cat_spLymantria_dispar        -8.9667700 -4.4122168
    ## cat_spMelanolophia_canadaria  -3.9488308 -0.2215290
    ## cat_spMorrisonia_confusa      -8.6322770 -4.9114605
    ## cat_spNadata_gibbosa          -1.8310013  5.2209442
    ## cat_spNola_triquetrana       -10.2936870 -3.5681104
    ## cat_spOrgyia_leucostigma      -8.6008480 -3.2090956
    ## cat_spOrthosia_rubescens      -1.6739987  2.2483181
    ## cat_spPapilio_glaucus         -4.4868541  2.7068914
    ## cat_spParallelia_bistriaris  -10.9296412 -4.2469099
    ## cat_spPyreferra_hesperidago   -2.6055987  4.1896585
    ## cat_spSperanza_pustularia     -3.9870242  2.7097425
    ## [1] 0.8498059
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.ant.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density, 
    ##     weights = 1/site.varDRR.ants)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -6.3822  -1.2250   0.0000   0.3545   7.7372  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.615e+00  3.206e-01  -5.039 8.54e-05 ***
    ## site.delta.ant.LRR           -1.633e-01  4.113e-01  -0.397 0.695982    
    ## HostPlantBE                  -1.844e+01  3.797e+03  -0.005 0.996179    
    ## HostPlantHI                   4.432e-01  1.454e-01   3.047 0.006935 ** 
    ## HostPlantRM                   8.682e-02  2.732e-01   0.318 0.754296    
    ## HostPlantRO                   2.538e-01  2.440e-01   1.040 0.311921    
    ## HostPlantWH                  -4.719e-02  2.394e-01  -0.197 0.845904    
    ## HostPlantWO                  -1.624e-01  2.928e-01  -0.554 0.586097    
    ## cat_spAcronicta_hasta        -2.077e+01  7.712e+03  -0.003 0.997880    
    ## cat_spAcronicta_ovata         1.433e+00  8.302e-01   1.725 0.101567    
    ## cat_spCrocidographa_normani  -2.018e+01  1.293e+04  -0.002 0.998772    
    ## cat_spDryocampa_rubicunda     1.841e-01  1.007e+00   0.183 0.857003    
    ## cat_spEnnomos_subsignaria    -1.547e+00  1.549e+00  -0.998 0.331392    
    ## cat_spEutrapela_clemataria   -1.502e+00  8.865e-01  -1.695 0.107345    
    ## cat_spIridopsis_ephyraria    -1.043e+00  2.442e+00  -0.427 0.674405    
    ## cat_spLithophane_antennata    8.952e-01  1.738e+00   0.515 0.612874    
    ## cat_spLomographa_vestaliata  -2.513e+00  1.088e+00  -2.310 0.032958 *  
    ## cat_spLymantria_dispar       -1.112e+00  4.195e-01  -2.651 0.016248 *  
    ## cat_spMelanolophia_canadaria -1.172e+00  3.216e-01  -3.642 0.001863 ** 
    ## cat_spMorrisonia_confusa     -2.221e+00  4.591e-01  -4.838 0.000132 ***
    ## cat_spNadata_gibbosa         -1.403e-01  8.833e-01  -0.159 0.875558    
    ## cat_spNola_triquetrana        2.009e-01  4.350e-01   0.462 0.649829    
    ## cat_spOrgyia_leucostigma     -9.081e-01  1.123e+00  -0.809 0.429182    
    ## cat_spOrthosia_rubescens     -8.239e-02  3.473e-01  -0.237 0.815174    
    ## cat_spPapilio_glaucus        -1.305e+00  1.169e+00  -1.116 0.279143    
    ## cat_spParallelia_bistriaris  -1.352e+00  1.770e+00  -0.764 0.454745    
    ## cat_spPyreferra_hesperidago  -1.412e+00  8.539e-01  -1.654 0.115468    
    ## cat_spSperanza_pustularia    -8.557e-01  3.763e-01  -2.274 0.035449 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 20.38203)
    ## 
    ##     Null deviance: 3341.82  on 45  degrees of freedom
    ## Residual deviance:  360.82  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 18
    ##                                      2.5 %        97.5 %
    ## (Intercept)                     -2.2710452 -1.008217e+00
    ## site.delta.ant.LRR              -0.9564629  6.632782e-01
    ## HostPlantBE                  -1860.5735751 -2.915182e+03
    ## HostPlantHI                      0.1556045  7.263371e-01
    ## HostPlantRM                     -0.4731347  6.016425e-01
    ## HostPlantRO                     -0.2484208  7.119830e-01
    ## HostPlantWH                     -0.5332075  4.069691e-01
    ## HostPlantWO                     -0.7688044  3.854502e-01
    ## cat_spAcronicta_hasta        -3628.9927237 -4.554736e+03
    ## cat_spAcronicta_ovata           -0.2213218  3.074780e+00
    ## cat_spCrocidographa_normani             NA  1.363271e+03
    ## cat_spDryocampa_rubicunda       -2.1716734  2.010039e+00
    ## cat_spEnnomos_subsignaria       -6.7298914  7.283540e-01
    ## cat_spEutrapela_clemataria      -3.6991718 -1.283158e-03
    ## cat_spIridopsis_ephyraria      -12.6048054  2.172384e+00
    ## cat_spLithophane_antennata      -3.9096164  4.451111e+00
    ## cat_spLomographa_vestaliata     -5.3680228 -7.058559e-01
    ## cat_spLymantria_dispar          -1.9255138 -2.753018e-01
    ## cat_spMelanolophia_canadaria    -1.7808153 -5.138321e-01
    ## cat_spMorrisonia_confusa        -3.1682666 -1.346571e+00
    ## cat_spNadata_gibbosa            -2.1481505  1.460970e+00
    ## cat_spNola_triquetrana          -0.6411408  1.069554e+00
    ## cat_spOrgyia_leucostigma        -4.0245922  8.831572e-01
    ## cat_spOrthosia_rubescens        -0.7486273  6.191199e-01
    ## cat_spPapilio_glaucus           -4.5312367  5.812762e-01
    ## cat_spParallelia_bistriaris     -7.8594697  1.155289e+00
    ## cat_spPyreferra_hesperidago     -3.4940294  4.914709e-02
    ## cat_spSperanza_pustularia       -1.5682725 -8.813985e-02
    ## [1] 0.923182
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.ant.LRR + 
    ##     HostPlant + cat_sp, family = quasibinomial(), data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -1.5162  -0.3171   0.0000   0.1574   2.1946  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                    -1.58077    0.31088  -5.085 7.73e-05 ***
    ## site.delta.ant.LRR             -0.14716    0.31549  -0.466 0.646483    
    ## HostPlantBE                   -18.65722 5133.18888  -0.004 0.997140    
    ## HostPlantHI                     0.38407    0.23691   1.621 0.122364    
    ## HostPlantRM                    -0.03695    0.27290  -0.135 0.893800    
    ## HostPlantRO                     0.08553    0.32979   0.259 0.798304    
    ## HostPlantWH                    -0.46922    0.28831  -1.628 0.121007    
    ## HostPlantWO                    -0.10856    0.28451  -0.382 0.707251    
    ## cat_spAcronicta_hasta         -20.81047 7571.57057  -0.003 0.997837    
    ## cat_spAcronicta_ovata           1.34976    0.62003   2.177 0.043039 *  
    ## cat_spCrocidographa_normani   -20.08913 7702.36295  -0.003 0.997948    
    ## cat_spDryocampa_rubicunda       0.28089    0.45870   0.612 0.547960    
    ## cat_spEnnomos_subsignaria      -1.45447    0.84641  -1.718 0.102875    
    ## cat_spEutrapela_clemataria     -1.74674    0.83127  -2.101 0.049964 *  
    ## cat_spIridopsis_ephyraria      -0.79878    0.84074  -0.950 0.354648    
    ## cat_spLithophane_antennata      0.98879    0.69087   1.431 0.169498    
    ## cat_spLomographa_vestaliata    -2.53714    1.15920  -2.189 0.042044 *  
    ## cat_spLymantria_dispar         -0.63278    0.37658  -1.680 0.110166    
    ## cat_spMelanolophia_canadaria   -1.12549    0.30397  -3.703 0.001629 ** 
    ## cat_spMorrisonia_confusa       -2.29214    0.55801  -4.108 0.000661 ***
    ## cat_spNadata_gibbosa           -0.22795    0.68271  -0.334 0.742326    
    ## cat_spNola_triquetrana          0.58776    0.45234   1.299 0.210212    
    ## cat_spOrgyia_leucostigma       -1.06973    0.83839  -1.276 0.218199    
    ## cat_spOrthosia_rubescens       -0.04907    0.32634  -0.150 0.882149    
    ## cat_spPapilio_glaucus          -1.35655    0.86225  -1.573 0.133067    
    ## cat_spParallelia_bistriaris    -1.26421    1.14954  -1.100 0.285930    
    ## cat_spPyreferra_hesperidago    -1.02879    0.64125  -1.604 0.126036    
    ## cat_spSperanza_pustularia      -0.76636    0.36512  -2.099 0.050199 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 1.149484)
    ## 
    ##     Null deviance: 177.8  on 45  degrees of freedom
    ## Residual deviance:  21.6  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 18
    ##                                      2.5 %        97.5 %
    ## (Intercept)                  -2.213898e+00 -9.904734e-01
    ## site.delta.ant.LRR           -7.659879e-01  4.796943e-01
    ## HostPlantBE                             NA  2.903306e+02
    ## HostPlantHI                  -8.450675e-02  8.467808e-01
    ## HostPlantRM                  -5.816421e-01  4.912467e-01
    ## HostPlantRO                  -5.898035e-01  7.096625e-01
    ## HostPlantWH                  -1.049769e+00  8.398356e-02
    ## HostPlantWO                  -6.825405e-01  4.371545e-01
    ## cat_spAcronicta_hasta        -6.269048e+03 -5.937987e+03
    ## cat_spAcronicta_ovata         1.235107e-01  2.572035e+00
    ## cat_spCrocidographa_normani             NA  5.038272e+02
    ## cat_spDryocampa_rubicunda    -6.158301e-01  1.188201e+00
    ## cat_spEnnomos_subsignaria    -3.521662e+00 -1.008760e-02
    ## cat_spEutrapela_clemataria   -3.795904e+00 -3.441738e-01
    ## cat_spIridopsis_ephyraria    -2.859807e+00  6.293040e-01
    ## cat_spLithophane_antennata   -4.371249e-01  2.322151e+00
    ## cat_spLomographa_vestaliata  -5.784043e+00 -6.969977e-01
    ## cat_spLymantria_dispar       -1.368857e+00  1.142391e-01
    ## cat_spMelanolophia_canadaria -1.705855e+00 -5.086297e-01
    ## cat_spMorrisonia_confusa     -3.517864e+00 -1.279752e+00
    ## cat_spNadata_gibbosa         -1.708309e+00  1.032144e+00
    ## cat_spNola_triquetrana       -3.057989e-01  1.477198e+00
    ## cat_spOrgyia_leucostigma     -3.127245e+00  3.533977e-01
    ## cat_spOrthosia_rubescens     -6.749411e-01  6.093400e-01
    ## cat_spPapilio_glaucus        -3.444040e+00  1.264031e-01
    ## cat_spParallelia_bistriaris  -4.501288e+00  5.530117e-01
    ## cat_spPyreferra_hesperidago  -2.446503e+00  1.364017e-01
    ## cat_spSperanza_pustularia    -1.466146e+00 -3.039509e-02
    ## [1] 0.9413862
    ## 
    ## Call:
    ## glm(formula = log(hym_prop + 1e-04) ~ site.delta.ant.LRR + HostPlant + 
    ##     cat_sp, data = modeling_data_density, weights = 1/site.varDRR.ants)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -14.776   -1.370    0.000    1.042   10.275  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept)                  -1.82249    1.35812  -1.342  0.19630   
    ## site.delta.ant.LRR           -0.17733    1.50497  -0.118  0.90751   
    ## HostPlantBE                  -4.76791    1.32963  -3.586  0.00211 **
    ## HostPlantHI                   0.77315    0.93818   0.824  0.42067   
    ## HostPlantRM                  -1.23521    1.20609  -1.024  0.31933   
    ## HostPlantRO                   0.61539    1.14051   0.540  0.59611   
    ## HostPlantWH                  -1.06946    1.13717  -0.940  0.35943   
    ## HostPlantWO                   0.08702    1.17605   0.074  0.94183   
    ## cat_spAcronicta_hasta        -7.36056    2.35731  -3.122  0.00588 **
    ## cat_spAcronicta_ovata         0.82589    3.14590   0.263  0.79589   
    ## cat_spCrocidographa_normani  -6.15644    3.53787  -1.740  0.09890 . 
    ## cat_spDryocampa_rubicunda     1.45883    6.63389   0.220  0.82842   
    ## cat_spEnnomos_subsignaria    -0.54162    4.00649  -0.135  0.89397   
    ## cat_spEutrapela_clemataria   -2.29509    2.24622  -1.022  0.32043   
    ## cat_spIridopsis_ephyraria     0.24602    4.38689   0.056  0.95590   
    ## cat_spLithophane_antennata    1.72756    5.64219   0.306  0.76298   
    ## cat_spLomographa_vestaliata  -2.34370    2.51191  -0.933  0.36315   
    ## cat_spLymantria_dispar       -0.03439    1.68411  -0.020  0.98393   
    ## cat_spMelanolophia_canadaria -1.10459    1.31318  -0.841  0.41129   
    ## cat_spMorrisonia_confusa     -3.28378    1.34653  -2.439  0.02533 * 
    ## cat_spNadata_gibbosa         -0.47017    2.99901  -0.157  0.87717   
    ## cat_spNola_triquetrana        1.01049    2.04022   0.495  0.62639   
    ## cat_spOrgyia_leucostigma     -3.46391    2.37396  -1.459  0.16176   
    ## cat_spOrthosia_rubescens     -0.15630    1.52670  -0.102  0.91959   
    ## cat_spPapilio_glaucus        -1.14692    3.24761  -0.353  0.72807   
    ## cat_spParallelia_bistriaris   0.12534    3.34927   0.037  0.97056   
    ## cat_spPyreferra_hesperidago  -0.46440    3.08337  -0.151  0.88196   
    ## cat_spSperanza_pustularia     0.43699    1.74139   0.251  0.80470   
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 64.97957)
    ## 
    ##     Null deviance: 5620.9  on 45  degrees of freedom
    ## Residual deviance: 1169.6  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: 217.91
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                   -4.484349  0.8393642
    ## site.delta.ant.LRR            -3.127021  2.7723604
    ## HostPlantBE                   -7.373933 -2.1618930
    ## HostPlantHI                   -1.065639  2.6119444
    ## HostPlantRM                   -3.599101  1.1286736
    ## HostPlantRO                   -1.619975  2.8507484
    ## HostPlantWH                   -3.298266  1.1593450
    ## HostPlantWO                   -2.217991  2.3920262
    ## cat_spAcronicta_hasta        -11.980810 -2.7403108
    ## cat_spAcronicta_ovata         -5.339957  6.9917384
    ## cat_spCrocidographa_normani  -13.090544  0.7776671
    ## cat_spDryocampa_rubicunda    -11.543358 14.4610109
    ## cat_spEnnomos_subsignaria     -8.394203  7.3109646
    ## cat_spEutrapela_clemataria    -6.697597  2.1074194
    ## cat_spIridopsis_ephyraria     -8.352135  8.8441725
    ## cat_spLithophane_antennata    -9.330937 12.7860551
    ## cat_spLomographa_vestaliata   -7.266948  2.5795558
    ## cat_spLymantria_dispar        -3.335190  3.2664061
    ## cat_spMelanolophia_canadaria  -3.678370  1.4691878
    ## cat_spMorrisonia_confusa      -5.922930 -0.6446275
    ## cat_spNadata_gibbosa          -6.348120  5.4077892
    ## cat_spNola_triquetrana        -2.988268  5.0092553
    ## cat_spOrgyia_leucostigma      -8.116776  1.1889588
    ## cat_spOrthosia_rubescens      -3.148569  2.8359730
    ## cat_spPapilio_glaucus         -7.512112  5.2182662
    ## cat_spParallelia_bistriaris   -6.439110  6.6897881
    ## cat_spPyreferra_hesperidago   -6.507687  5.5788895
    ## cat_spSperanza_pustularia     -2.976063  3.8500432
    ## [1] 0.785835
    ## 
    ## Call:
    ## glm(formula = log(hym_prop + 1e-04) ~ site.delta.ant.LRR + HostPlant + 
    ##     cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -3.7588  -0.4776   0.0000   0.3309   3.3113  
    ## 
    ## Coefficients:
    ##                               Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept)                  -1.086262   1.365605  -0.795  0.43672   
    ## site.delta.ant.LRR           -0.433066   1.167759  -0.371  0.71508   
    ## HostPlantBE                  -5.372311   1.858969  -2.890  0.00975 **
    ## HostPlantHI                   0.296497   1.427346   0.208  0.83777   
    ## HostPlantRM                  -1.823169   1.252576  -1.456  0.16274   
    ## HostPlantRO                   0.256296   1.584605   0.162  0.87331   
    ## HostPlantWH                  -1.849379   1.385747  -1.335  0.19865   
    ## HostPlantWO                  -0.897591   1.371247  -0.655  0.52102   
    ## cat_spAcronicta_hasta        -8.057438   2.505299  -3.216  0.00479 **
    ## cat_spAcronicta_ovata         0.984107   2.658175   0.370  0.71554   
    ## cat_spCrocidographa_normani  -6.310199   2.490511  -2.534  0.02080 * 
    ## cat_spDryocampa_rubicunda     1.189113   2.587585   0.460  0.65134   
    ## cat_spEnnomos_subsignaria    -0.737970   2.513674  -0.294  0.77244   
    ## cat_spEutrapela_clemataria   -4.165451   1.927189  -2.161  0.04438 * 
    ## cat_spIridopsis_ephyraria     0.273767   1.920006   0.143  0.88820   
    ## cat_spLithophane_antennata    1.507793   2.532689   0.595  0.55903   
    ## cat_spLomographa_vestaliata  -3.240766   2.700253  -1.200  0.24563   
    ## cat_spLymantria_dispar       -0.019094   1.693482  -0.011  0.99113   
    ## cat_spMelanolophia_canadaria -1.254111   1.385892  -0.905  0.37746   
    ## cat_spMorrisonia_confusa     -4.297290   1.383480  -3.106  0.00610 **
    ## cat_spNadata_gibbosa         -0.235221   2.622067  -0.090  0.92951   
    ## cat_spNola_triquetrana        1.061322   2.500715   0.424  0.67630   
    ## cat_spOrgyia_leucostigma     -3.939093   2.004771  -1.965  0.06506 . 
    ## cat_spOrthosia_rubescens     -0.293269   1.458403  -0.201  0.84288   
    ## cat_spPapilio_glaucus        -1.616015   2.674791  -0.604  0.55327   
    ## cat_spParallelia_bistriaris  -0.008264   2.484785  -0.003  0.99738   
    ## cat_spPyreferra_hesperidago  -0.360357   2.526624  -0.143  0.88817   
    ## cat_spSperanza_pustularia     0.284630   2.490003   0.114  0.91026   
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 4.479164)
    ## 
    ##     Null deviance: 345.122  on 45  degrees of freedom
    ## Residual deviance:  80.625  on 18  degrees of freedom
    ##   (13 observations deleted due to missingness)
    ## AIC: 214.36
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %       97.5 %
    ## (Intercept)                   -3.762799  1.590273941
    ## site.delta.ant.LRR            -2.721831  1.855699863
    ## HostPlantBE                   -9.015823 -1.728798357
    ## HostPlantHI                   -2.501049  3.094043543
    ## HostPlantRM                   -4.278173  0.631835302
    ## HostPlantRO                   -2.849473  3.362064921
    ## HostPlantWH                   -4.565393  0.866633827
    ## HostPlantWO                   -3.585187  1.790004027
    ## cat_spAcronicta_hasta        -12.967734 -3.147141587
    ## cat_spAcronicta_ovata         -4.225819  6.194033120
    ## cat_spCrocidographa_normani  -11.191511 -1.428888040
    ## cat_spDryocampa_rubicunda     -3.882461  6.260685998
    ## cat_spEnnomos_subsignaria     -5.664680  4.188740727
    ## cat_spEutrapela_clemataria    -7.942673 -0.388229106
    ## cat_spIridopsis_ephyraria     -3.489376  4.036909896
    ## cat_spLithophane_antennata    -3.456186  6.471771494
    ## cat_spLomographa_vestaliata   -8.533165  2.051632620
    ## cat_spLymantria_dispar        -3.338257  3.300069353
    ## cat_spMelanolophia_canadaria  -3.970409  1.462186772
    ## cat_spMorrisonia_confusa      -7.008861 -1.585717897
    ## cat_spNadata_gibbosa          -5.374377  4.903935191
    ## cat_spNola_triquetrana        -3.839991  5.962633760
    ## cat_spOrgyia_leucostigma      -7.868371 -0.009814594
    ## cat_spOrthosia_rubescens      -3.151685  2.565147761
    ## cat_spPapilio_glaucus         -6.858508  3.626479083
    ## cat_spParallelia_bistriaris   -4.878352  4.861824372
    ## cat_spPyreferra_hesperidago   -5.312449  4.591735604
    ## cat_spSperanza_pustularia     -4.595687  5.164946574
    ## [1] 0.5803505

    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para, Not_Para) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, family = quasibinomial(), 
    ##     data = modeling_data_density, weights = 1/site.varDRR.birds + 
    ##         (site.delta.bird.LRR + site.delta.ant.LRR))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -4.3512  -1.3582   0.0000   0.4257   8.2479  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.25965    0.32022  -3.934 0.001499 ** 
    ## site.delta.bird.LRR          -0.43911    0.27261  -1.611 0.129545    
    ## site.delta.ant.LRR            0.42530    0.37389   1.137 0.274428    
    ## HostPlantBE                  -0.83811    0.79922  -1.049 0.312100    
    ## HostPlantHI                   0.09916    0.14489   0.684 0.504899    
    ## HostPlantRM                   0.40686    0.23017   1.768 0.098904 .  
    ## HostPlantRO                  -0.39283    0.38448  -1.022 0.324245    
    ## HostPlantWH                   0.12758    0.21032   0.607 0.553823    
    ## HostPlantWO                  -1.22954    0.26630  -4.617 0.000399 ***
    ## cat_spCrocidographa_normani  -0.93240    1.34093  -0.695 0.498226    
    ## cat_spEnnomos_subsignaria     1.06645    0.69265   1.540 0.145934    
    ## cat_spEutrapela_clemataria   -1.69996    2.30650  -0.737 0.473274    
    ## cat_spIridopsis_ephyraria    -1.13257    1.72178  -0.658 0.521343    
    ## cat_spLithophane_antennata    1.50788    1.82987   0.824 0.423736    
    ## cat_spLomographa_vestaliata  -1.57426    1.46711  -1.073 0.301405    
    ## cat_spLymantria_dispar       -0.98724    0.40394  -2.444 0.028367 *  
    ## cat_spMelanolophia_canadaria -0.98995    0.33476  -2.957 0.010397 *  
    ## cat_spMorrisonia_confusa     -2.26466    0.67359  -3.362 0.004651 ** 
    ## cat_spNadata_gibbosa          1.02149    0.76017   1.344 0.200400    
    ## cat_spNola_triquetrana        0.48341    0.40036   1.207 0.247268    
    ## cat_spOrthosia_rubescens      0.46743    0.38131   1.226 0.240475    
    ## cat_spPapilio_glaucus        -3.03167    1.98265  -1.529 0.148516    
    ## cat_spParallelia_bistriaris  -1.91517    1.82281  -1.051 0.311208    
    ## cat_spPyreferra_hesperidago  -0.11607    0.44381  -0.262 0.797487    
    ## cat_spSperanza_pustularia    -0.44361    0.35277  -1.257 0.229146    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 20.43367)
    ## 
    ##     Null deviance: 9224.27  on 38  degrees of freedom
    ## Residual deviance:  242.56  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 5
    ##                                     2.5 %      97.5 %
    ## (Intercept)                   -1.91171277 -0.65019448
    ## site.delta.bird.LRR           -0.96889003  0.10299191
    ## site.delta.ant.LRR            -0.29847258  1.17082122
    ## HostPlantBE                   -2.89114771  0.44569016
    ## HostPlantHI                   -0.18952597  0.37904530
    ## HostPlantRM                   -0.05855615  0.84525920
    ## HostPlantRO                   -1.16534930  0.34518431
    ## HostPlantWH                   -0.29444582  0.53114214
    ## HostPlantWO                   -1.76938168 -0.72228255
    ## cat_spCrocidographa_normani   -4.83137797  1.21934691
    ## cat_spEnnomos_subsignaria     -0.31038121  2.42569007
    ## cat_spEutrapela_clemataria   -12.12804438  1.35840905
    ## cat_spIridopsis_ephyraria     -6.94934792  1.51592112
    ## cat_spLithophane_antennata    -2.90986440  5.92666558
    ## cat_spLomographa_vestaliata   -6.14595546  0.68354650
    ## cat_spLymantria_dispar        -1.76826460 -0.17957603
    ## cat_spMelanolophia_canadaria  -1.62815544 -0.30996154
    ## cat_spMorrisonia_confusa      -3.76836332 -1.05357964
    ## cat_spNadata_gibbosa          -0.56509662  2.47315867
    ## cat_spNola_triquetrana        -0.28805036  1.28567269
    ## cat_spOrthosia_rubescens      -0.26357276  1.23625989
    ## cat_spPapilio_glaucus         -9.78666350  0.09857633
    ## cat_spParallelia_bistriaris   -8.78804815  0.63606386
    ## cat_spPyreferra_hesperidago   -0.98563461  0.76020997
    ## cat_spSperanza_pustularia     -1.11702769  0.27076587
    ## [1] 0.9845659
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para, Not_Para) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, family = quasibinomial(), 
    ##     data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -1.2705  -0.3643   0.0000   0.1088   1.9927  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.18970    0.26831  -4.434 0.000566 ***
    ## site.delta.bird.LRR          -0.40537    0.24357  -1.664 0.118267    
    ## site.delta.ant.LRR            0.38516    0.34337   1.122 0.280854    
    ## HostPlantBE                  -0.99551    1.14755  -0.868 0.400290    
    ## HostPlantHI                   0.05824    0.22553   0.258 0.799995    
    ## HostPlantRM                   0.34869    0.25391   1.373 0.191264    
    ## HostPlantRO                  -0.40301    0.40734  -0.989 0.339268    
    ## HostPlantWH                  -0.11351    0.25305  -0.449 0.660601    
    ## HostPlantWO                  -0.91268    0.39138  -2.332 0.035149 *  
    ## cat_spCrocidographa_normani  -0.98015    0.89543  -1.095 0.292161    
    ## cat_spEnnomos_subsignaria     1.00839    0.46144   2.185 0.046359 *  
    ## cat_spEutrapela_clemataria   -1.72871    1.18607  -1.458 0.167041    
    ## cat_spIridopsis_ephyraria    -1.14652    0.73659  -1.557 0.141893    
    ## cat_spLithophane_antennata    1.44368    0.66332   2.176 0.047134 *  
    ## cat_spLomographa_vestaliata  -1.68719    0.92797  -1.818 0.090496 .  
    ## cat_spLymantria_dispar       -0.79315    0.36025  -2.202 0.044963 *  
    ## cat_spMelanolophia_canadaria -1.01191    0.28025  -3.611 0.002837 ** 
    ## cat_spMorrisonia_confusa     -2.40666    0.58921  -4.085 0.001115 ** 
    ## cat_spNadata_gibbosa          0.66266    0.57213   1.158 0.266152    
    ## cat_spNola_triquetrana        0.65481    0.37102   1.765 0.099373 .  
    ## cat_spOrthosia_rubescens      0.42491    0.32545   1.306 0.212736    
    ## cat_spPapilio_glaucus        -2.97044    1.09197  -2.720 0.016585 *  
    ## cat_spParallelia_bistriaris  -1.93593    1.18126  -1.639 0.123511    
    ## cat_spPyreferra_hesperidago   0.06832    0.38514   0.177 0.861742    
    ## cat_spSperanza_pustularia    -0.45704    0.30334  -1.507 0.154120    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 1.249012)
    ## 
    ##     Null deviance: 299.108  on 38  degrees of freedom
    ## Residual deviance:  16.307  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 5
    ##                                    2.5 %      97.5 %
    ## (Intercept)                  -1.72819483 -0.67371155
    ## site.delta.bird.LRR          -0.88517698  0.07121340
    ## site.delta.ant.LRR           -0.28488178  1.06548040
    ## HostPlantBE                  -4.38630390  0.72019201
    ## HostPlantHI                  -0.38873295  0.49699618
    ## HostPlantRM                  -0.15510885  0.84187570
    ## HostPlantRO                  -1.22154129  0.37895516
    ## HostPlantWH                  -0.61812485  0.37557712
    ## HostPlantWO                  -1.73039472 -0.18440489
    ## cat_spCrocidographa_normani  -3.17520155  0.55353399
    ## cat_spEnnomos_subsignaria     0.11145669  1.92424273
    ## cat_spEutrapela_clemataria   -5.15421351  0.11568782
    ## cat_spIridopsis_ephyraria    -2.86572241  0.13540893
    ## cat_spLithophane_antennata    0.13803052  2.76292316
    ## cat_spLomographa_vestaliata  -3.92372481 -0.07722425
    ## cat_spLymantria_dispar       -1.50580566 -0.08760005
    ## cat_spMelanolophia_canadaria -1.55239512 -0.45048462
    ## cat_spMorrisonia_confusa     -3.70649552 -1.34491762
    ## cat_spNadata_gibbosa         -0.49149006  1.77132720
    ## cat_spNola_triquetrana       -0.06959062  1.38801146
    ## cat_spOrthosia_rubescens     -0.19980666  1.07938839
    ## cat_spPapilio_glaucus        -5.23821697 -0.89460587
    ## cat_spParallelia_bistriaris  -5.35716657 -0.10795888
    ## cat_spPyreferra_hesperidago  -0.68684383  0.82627039
    ## cat_spSperanza_pustularia    -1.04180636  0.14950028
    ## [1] 0.981171
    ## 
    ## Call:
    ## glm(formula = log(para_prop + 1e-04) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, data = modeling_data_density, 
    ##     weights = 1/site.varDRR.birds + (site.delta.bird.LRR + site.delta.ant.LRR))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -8.1079  -0.9211   0.0000   1.4145  13.5761  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept)                  -1.60334    1.33559  -1.200  0.24987   
    ## site.delta.bird.LRR          -0.40305    0.98490  -0.409  0.68856   
    ## site.delta.ant.LRR            0.01707    1.50868   0.011  0.99113   
    ## HostPlantBE                  -1.25042    1.10080  -1.136  0.27506   
    ## HostPlantHI                   0.53238    0.90270   0.590  0.56475   
    ## HostPlantRM                  -0.03710    1.16681  -0.032  0.97508   
    ## HostPlantRO                   0.61600    1.37015   0.450  0.65989   
    ## HostPlantWH                  -0.26538    1.04634  -0.254  0.80347   
    ## HostPlantWO                  -0.34506    1.05828  -0.326  0.74920   
    ## cat_spCrocidographa_normani  -0.29006    3.03533  -0.096  0.92522   
    ## cat_spEnnomos_subsignaria     1.21120    3.63490   0.333  0.74391   
    ## cat_spEutrapela_clemataria   -0.99306    3.60703  -0.275  0.78710   
    ## cat_spIridopsis_ephyraria    -0.19086    3.50835  -0.054  0.95738   
    ## cat_spLithophane_antennata    1.44444    5.87312   0.246  0.80930   
    ## cat_spLomographa_vestaliata  -1.53846    3.49332  -0.440  0.66637   
    ## cat_spLymantria_dispar       -0.29822    1.70826  -0.175  0.86391   
    ## cat_spMelanolophia_canadaria -0.91562    1.34810  -0.679  0.50809   
    ## cat_spMorrisonia_confusa     -4.82946    1.55161  -3.113  0.00764 **
    ## cat_spNadata_gibbosa          0.20412    2.87015   0.071  0.94431   
    ## cat_spNola_triquetrana        0.81010    1.95307   0.415  0.68459   
    ## cat_spOrthosia_rubescens      0.16215    1.53746   0.105  0.91750   
    ## cat_spPapilio_glaucus        -2.23057    5.70534  -0.391  0.70171   
    ## cat_spParallelia_bistriaris  -1.16832    2.97671  -0.392  0.70061   
    ## cat_spPyreferra_hesperidago   0.43368    2.42056   0.179  0.86038   
    ## cat_spSperanza_pustularia     0.09938    1.68326   0.059  0.95375   
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 45.05353)
    ## 
    ##     Null deviance: 2785.18  on 38  degrees of freedom
    ## Residual deviance:  630.75  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: 174.92
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                   -4.221047  1.0143645
    ## site.delta.bird.LRR           -2.333428  1.5273230
    ## site.delta.ant.LRR            -2.939878  2.9740278
    ## HostPlantBE                   -3.407948  0.9071073
    ## HostPlantHI                   -1.236882  2.3016418
    ## HostPlantRM                   -2.324008  2.2498053
    ## HostPlantRO                   -2.069444  3.3014432
    ## HostPlantWH                   -2.316175  1.7854158
    ## HostPlantWO                   -2.419255  1.7291308
    ## cat_spCrocidographa_normani   -6.239193  5.6590794
    ## cat_spEnnomos_subsignaria     -5.913068  8.3354780
    ## cat_spEutrapela_clemataria    -8.062713  6.0765907
    ## cat_spIridopsis_ephyraria     -7.067093  6.6853740
    ## cat_spLithophane_antennata   -10.066666 12.9555436
    ## cat_spLomographa_vestaliata   -8.385248  5.3083331
    ## cat_spLymantria_dispar        -3.646342  3.0499045
    ## cat_spMelanolophia_canadaria  -3.557851  1.7266142
    ## cat_spMorrisonia_confusa      -7.870561 -1.7883559
    ## cat_spNadata_gibbosa          -5.421265  5.8295104
    ## cat_spNola_triquetrana        -3.017847  4.6380531
    ## cat_spOrthosia_rubescens      -2.851223  3.1755205
    ## cat_spPapilio_glaucus        -13.412821  8.9516889
    ## cat_spParallelia_bistriaris   -7.002564  4.6659201
    ## cat_spPyreferra_hesperidago   -4.310535  5.1778942
    ## cat_spSperanza_pustularia     -3.199743  3.3985083
    ## [1] 0.7663438
    ## 
    ## Call:
    ## glm(formula = log(para_prop + 1e-04) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.0894  -0.5892   0.0000   0.6098   2.7782  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.81785    1.13884  -1.596 0.132756    
    ## site.delta.bird.LRR           0.06781    0.92128   0.074 0.942364    
    ## site.delta.ant.LRR            0.17602    1.13889   0.155 0.879378    
    ## HostPlantBE                  -0.96223    1.53019  -0.629 0.539587    
    ## HostPlantHI                   1.47832    1.25266   1.180 0.257608    
    ## HostPlantRM                   0.13886    1.24788   0.111 0.912977    
    ## HostPlantRO                   1.64335    1.46629   1.121 0.281250    
    ## HostPlantWH                  -0.24043    1.24130  -0.194 0.849199    
    ## HostPlantWO                   1.54474    1.52851   1.011 0.329348    
    ## cat_spCrocidographa_normani  -0.73813    2.05174  -0.360 0.724395    
    ## cat_spEnnomos_subsignaria     0.73909    2.12618   0.348 0.733300    
    ## cat_spEutrapela_clemataria   -1.18403    1.99345  -0.594 0.562013    
    ## cat_spIridopsis_ephyraria    -0.63866    1.54579  -0.413 0.685747    
    ## cat_spLithophane_antennata    0.95244    2.18398   0.436 0.669412    
    ## cat_spLomographa_vestaliata  -1.47149    2.35868  -0.624 0.542749    
    ## cat_spLymantria_dispar       -0.26571    1.51913  -0.175 0.863657    
    ## cat_spMelanolophia_canadaria -1.29792    1.13531  -1.143 0.272114    
    ## cat_spMorrisonia_confusa     -5.54771    1.22496  -4.529 0.000472 ***
    ## cat_spNadata_gibbosa         -1.04309    2.17418  -0.480 0.638803    
    ## cat_spNola_triquetrana        0.98316    2.02373   0.486 0.634614    
    ## cat_spOrthosia_rubescens     -0.25040    1.21110  -0.207 0.839178    
    ## cat_spPapilio_glaucus        -0.93662    3.77544  -0.248 0.807672    
    ## cat_spParallelia_bistriaris  -1.29632    2.00190  -0.648 0.527755    
    ## cat_spPyreferra_hesperidago   0.63843    2.10522   0.303 0.766150    
    ## cat_spSperanza_pustularia     0.12638    2.04402   0.062 0.951575    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 2.833619)
    ## 
    ##     Null deviance: 208.698  on 38  degrees of freedom
    ## Residual deviance:  39.671  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: 163.34
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                  -4.0499223  0.4142300
    ## site.delta.bird.LRR          -1.7378596  1.8734851
    ## site.delta.ant.LRR           -2.0561631  2.4082052
    ## HostPlantBE                  -3.9613442  2.0368925
    ## HostPlantHI                  -0.9768495  3.9334804
    ## HostPlantRM                  -2.3069330  2.5846492
    ## HostPlantRO                  -1.2305210  4.5172170
    ## HostPlantWH                  -2.6733338  2.1924744
    ## HostPlantWO                  -1.4510878  4.5405695
    ## cat_spCrocidographa_normani  -4.7594647  3.2831949
    ## cat_spEnnomos_subsignaria    -3.4281442  4.9063285
    ## cat_spEutrapela_clemataria   -5.0911154  2.7230515
    ## cat_spIridopsis_ephyraria    -3.6683616  2.3910373
    ## cat_spLithophane_antennata   -3.3280885  5.2329715
    ## cat_spLomographa_vestaliata  -6.0944143  3.1514263
    ## cat_spLymantria_dispar       -3.2431534  2.7117387
    ## cat_spMelanolophia_canadaria -3.5230813  0.9272354
    ## cat_spMorrisonia_confusa     -7.9485941 -3.1468204
    ## cat_spNadata_gibbosa         -5.3044004  3.2182129
    ## cat_spNola_triquetrana       -2.9832815  4.9495941
    ## cat_spOrthosia_rubescens     -2.6241228  2.1233187
    ## cat_spPapilio_glaucus        -8.3363458  6.4630975
    ## cat_spParallelia_bistriaris  -5.2199731  2.6273261
    ## cat_spPyreferra_hesperidago  -3.4877171  4.7645800
    ## cat_spSperanza_pustularia    -3.8798280  4.1325790
    ## [1] 0.6587993
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, family = quasibinomial(), 
    ##     data = modeling_data_density, weights = 1/site.varDRR.birds + 
    ##         (site.delta.bird.LRR + site.delta.ant.LRR))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -4.4629  -0.0002   0.0000   0.0000   4.0898  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                     -2.2161     0.3236  -6.848 7.96e-06 ***
    ## site.delta.bird.LRR             -1.5462     0.3164  -4.887 0.000240 ***
    ## site.delta.ant.LRR               1.2986     0.4297   3.022 0.009141 ** 
    ## HostPlantBE                      0.7108     0.4894   1.453 0.168394    
    ## HostPlantHI                     -1.1001     0.2055  -5.353 0.000102 ***
    ## HostPlantRM                      0.4112     0.2281   1.803 0.093001 .  
    ## HostPlantRO                     -2.3668     0.4796  -4.935 0.000220 ***
    ## HostPlantWH                      0.2405     0.2056   1.170 0.261604    
    ## HostPlantWO                     -4.3766     0.7189  -6.088 2.80e-05 ***
    ## cat_spCrocidographa_normani      1.1905     0.8884   1.340 0.201548    
    ## cat_spEnnomos_subsignaria        2.9195     0.6337   4.607 0.000407 ***
    ## cat_spEutrapela_clemataria      -0.1956     1.3985  -0.140 0.890733    
    ## cat_spIridopsis_ephyraria      -21.2620 24164.0898  -0.001 0.999310    
    ## cat_spLithophane_antennata       3.2450     1.4402   2.253 0.040812 *  
    ## cat_spLomographa_vestaliata     -0.1798     1.2756  -0.141 0.889943    
    ## cat_spLymantria_dispar         -22.9104  6839.5346  -0.003 0.997375    
    ## cat_spMelanolophia_canadaria    -0.8532     0.3477  -2.454 0.027815 *  
    ## cat_spMorrisonia_confusa       -20.8621  4579.4725  -0.005 0.996429    
    ## cat_spNadata_gibbosa             3.5962     0.8734   4.117 0.001046 ** 
    ## cat_spNola_triquetrana         -22.9082 10001.6209  -0.002 0.998205    
    ## cat_spOrthosia_rubescens         1.7199     0.4267   4.031 0.001239 ** 
    ## cat_spPapilio_glaucus           -7.0143     2.0075  -3.494 0.003578 ** 
    ## cat_spParallelia_bistriaris    -21.4059 20164.7961  -0.001 0.999168    
    ## cat_spPyreferra_hesperidago      0.2544     0.3753   0.678 0.508995    
    ## cat_spSperanza_pustularia       -0.1376     0.3405  -0.404 0.692221    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 7.157509)
    ## 
    ##     Null deviance: 8535.776  on 38  degrees of freedom
    ## Residual deviance:   91.194  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 20
    ##                                      2.5 %        97.5 %
    ## (Intercept)                  -2.880869e+00 -1.607339e+00
    ## site.delta.bird.LRR          -2.172576e+00 -9.252611e-01
    ## site.delta.ant.LRR            4.722247e-01  2.160783e+00
    ## HostPlantBE                  -3.915982e-01  1.569040e+00
    ## HostPlantHI                  -1.517787e+00 -7.099662e-01
    ## HostPlantRM                  -5.303858e-02  8.426811e-01
    ## HostPlantRO                  -3.337397e+00 -1.453779e+00
    ## HostPlantWH                  -1.734590e-01  6.344577e-01
    ## HostPlantWO                  -6.121244e+00 -3.188716e+00
    ## cat_spCrocidographa_normani  -8.488620e-01  2.788538e+00
    ## cat_spEnnomos_subsignaria     1.685785e+00  4.179193e+00
    ## cat_spEutrapela_clemataria   -4.538779e+00  1.937688e+00
    ## cat_spIridopsis_ephyraria               NA  2.153083e+03
    ## cat_spLithophane_antennata   -3.748122e-01  5.967531e+00
    ## cat_spLomographa_vestaliata  -3.725614e+00  1.908701e+00
    ## cat_spLymantria_dispar       -7.759819e+03 -6.657784e+03
    ## cat_spMelanolophia_canadaria -1.506997e+00 -1.397401e-01
    ## cat_spMorrisonia_confusa     -2.709218e+03 -3.303014e+03
    ## cat_spNadata_gibbosa          1.975848e+00  5.530981e+00
    ## cat_spNola_triquetrana       -1.101724e+04 -9.538381e+03
    ## cat_spOrthosia_rubescens      9.189610e-01  2.596274e+00
    ## cat_spPapilio_glaucus        -1.403715e+01 -3.905959e+00
    ## cat_spParallelia_bistriaris  -2.485137e+04 -2.076380e+04
    ## cat_spPyreferra_hesperidago  -4.669026e-01  1.009044e+00
    ## cat_spSperanza_pustularia    -7.804459e-01  5.582991e-01
    ## [1] 0.9874465
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, family = quasibinomial(), 
    ##     data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##      Min        1Q    Median        3Q       Max  
    ## -1.10529  -0.00006  -0.00003   0.00000   1.60420  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                     -2.0209     0.2846  -7.102 5.32e-06 ***
    ## site.delta.bird.LRR             -0.9857     0.3000  -3.286 0.005411 ** 
    ## site.delta.ant.LRR               0.9020     0.4591   1.965 0.069628 .  
    ## HostPlantBE                      0.5519     0.7686   0.718 0.484537    
    ## HostPlantHI                     -0.7558     0.2712  -2.786 0.014567 *  
    ## HostPlantRM                      0.3307     0.2849   1.161 0.265116    
    ## HostPlantRO                     -1.4930     0.4971  -3.003 0.009489 ** 
    ## HostPlantWH                      0.0783     0.2597   0.302 0.767462    
    ## HostPlantWO                     -2.5830     0.7115  -3.630 0.002729 ** 
    ## cat_spCrocidographa_normani      0.4840     0.6702   0.722 0.482099    
    ## cat_spEnnomos_subsignaria        2.0867     0.4865   4.289 0.000750 ***
    ## cat_spEutrapela_clemataria      -0.5895     0.8115  -0.726 0.479505    
    ## cat_spIridopsis_ephyraria      -21.4018  9983.2528  -0.002 0.998320    
    ## cat_spLithophane_antennata       2.3350     0.6451   3.620 0.002787 ** 
    ## cat_spLomographa_vestaliata     -0.9191     0.9286  -0.990 0.339100    
    ## cat_spLymantria_dispar         -22.8750  8877.5328  -0.003 0.997980    
    ## cat_spMelanolophia_canadaria    -1.1763     0.3079  -3.820 0.001875 ** 
    ## cat_spMorrisonia_confusa       -21.4377  5023.0666  -0.004 0.996655    
    ## cat_spNadata_gibbosa             2.0862     0.6623   3.150 0.007091 ** 
    ## cat_spNola_triquetrana         -22.9446 13934.1802  -0.002 0.998709    
    ## cat_spOrthosia_rubescens         1.0634     0.3773   2.818 0.013680 *  
    ## cat_spPapilio_glaucus           -5.3127     1.2013  -4.422 0.000579 ***
    ## cat_spParallelia_bistriaris    -21.6853 14286.7332  -0.002 0.998810    
    ## cat_spPyreferra_hesperidago      0.3776     0.3386   1.115 0.283496    
    ## cat_spSperanza_pustularia       -0.2754     0.3003  -0.917 0.374495    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 0.5333129)
    ## 
    ##     Null deviance: 271.3800  on 38  degrees of freedom
    ## Residual deviance:   7.1092  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 20
    ##                                      2.5 %        97.5 %
    ## (Intercept)                  -2.592299e+00 -1.472403e+00
    ## site.delta.bird.LRR          -1.598591e+00 -4.141152e-01
    ## site.delta.ant.LRR           -2.988101e-03  1.805814e+00
    ## HostPlantBE                  -1.363770e+00  1.820569e+00
    ## HostPlantHI                  -1.304874e+00 -2.379457e-01
    ## HostPlantRM                  -2.386489e-01  8.809820e-01
    ## HostPlantRO                  -2.499354e+00 -5.458451e-01
    ## HostPlantWH                  -4.420199e-01  5.787125e-01
    ## HostPlantWO                  -4.194307e+00 -1.371371e+00
    ## cat_spCrocidographa_normani  -9.521210e-01  1.734776e+00
    ## cat_spEnnomos_subsignaria     1.160976e+00  3.074441e+00
    ## cat_spEutrapela_clemataria   -2.556502e+00  7.978555e-01
    ## cat_spIridopsis_ephyraria    -4.904729e+03 -7.290578e+03
    ## cat_spLithophane_antennata    1.061636e+00  3.608073e+00
    ## cat_spLomographa_vestaliata  -3.040559e+00  7.567489e-01
    ## cat_spLymantria_dispar       -4.375774e+03 -6.691253e+03
    ## cat_spMelanolophia_canadaria -1.769246e+00 -5.565722e-01
    ## cat_spMorrisonia_confusa     -5.253843e+03 -4.631206e+03
    ## cat_spNadata_gibbosa          8.375883e-01  3.474604e+00
    ## cat_spNola_triquetrana       -1.121624e+04 -1.086813e+04
    ## cat_spOrthosia_rubescens      3.548056e-01  1.840137e+00
    ## cat_spPapilio_glaucus        -7.857882e+00 -3.052645e+00
    ## cat_spParallelia_bistriaris  -1.510055e+04 -1.324795e+04
    ## cat_spPyreferra_hesperidago  -2.777202e-01  1.052282e+00
    ## cat_spSperanza_pustularia    -8.495344e-01  3.297480e-01
    ## [1] 0.9792352
    ## 
    ## Call:
    ## glm(formula = log(tach_prop + 1e-04) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, data = modeling_data_density, 
    ##     weights = 1/site.varDRR.birds + (site.delta.bird.LRR + site.delta.ant.LRR))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -7.1443  -1.2718   0.0000   0.8011  11.4654  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                   -1.7728     0.9245  -1.917  0.07581 .  
    ## site.delta.bird.LRR           -1.2123     0.6818  -1.778  0.09709 .  
    ## site.delta.ant.LRR            -0.2689     1.0443  -0.258  0.80052    
    ## HostPlantBE                   -0.0223     0.7620  -0.029  0.97707    
    ## HostPlantHI                   -1.2059     0.6249  -1.930  0.07414 .  
    ## HostPlantRM                    0.1858     0.8077   0.230  0.82136    
    ## HostPlantRO                   -1.5144     0.9484  -1.597  0.13266    
    ## HostPlantWH                    0.0698     0.7243   0.096  0.92459    
    ## HostPlantWO                   -4.8866     0.7326  -6.671 1.06e-05 ***
    ## cat_spCrocidographa_normani    0.4925     2.1011   0.234  0.81807    
    ## cat_spEnnomos_subsignaria      1.4990     2.5161   0.596  0.56085    
    ## cat_spEutrapela_clemataria    -0.6522     2.4968  -0.261  0.79772    
    ## cat_spIridopsis_ephyraria     -6.2865     2.4285  -2.589  0.02145 *  
    ## cat_spLithophane_antennata     1.4885     4.0655   0.366  0.71975    
    ## cat_spLomographa_vestaliata   -1.8138     2.4181  -0.750  0.46562    
    ## cat_spLymantria_dispar        -7.1257     1.1825  -6.026 3.11e-05 ***
    ## cat_spMelanolophia_canadaria  -1.5849     0.9332  -1.698  0.11154    
    ## cat_spMorrisonia_confusa      -5.7697     1.0740  -5.372 9.85e-05 ***
    ## cat_spNadata_gibbosa           3.5912     1.9868   1.808  0.09220 .  
    ## cat_spNola_triquetrana        -7.4688     1.3519  -5.524 7.49e-05 ***
    ## cat_spOrthosia_rubescens       0.8103     1.0643   0.761  0.45905    
    ## cat_spPapilio_glaucus         -4.9984     3.9493  -1.266  0.22630    
    ## cat_spParallelia_bistriaris   -7.2027     2.0605  -3.496  0.00357 ** 
    ## cat_spPyreferra_hesperidago    0.1018     1.6756   0.061  0.95242    
    ## cat_spSperanza_pustularia     -0.6272     1.1652  -0.538  0.59885    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 21.588)
    ## 
    ##     Null deviance: 7027.49  on 38  degrees of freedom
    ## Residual deviance:  302.23  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: 146.23
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                    2.5 %     97.5 %
    ## (Intercept)                   -3.5847744  0.0392629
    ## site.delta.bird.LRR           -2.5485476  0.1239270
    ## site.delta.ant.LRR            -2.3157899  1.7779122
    ## HostPlantBE                   -1.5157746  1.4711767
    ## HostPlantHI                   -2.4306017  0.0188224
    ## HostPlantRM                   -1.3971995  1.7688688
    ## HostPlantRO                   -3.3732650  0.3445504
    ## HostPlantWH                   -1.3497933  1.4893946
    ## HostPlantWO                   -6.3223958 -3.4508156
    ## cat_spCrocidographa_normani   -3.6256022  4.6105758
    ## cat_spEnnomos_subsignaria     -3.4325302  6.4305457
    ## cat_spEutrapela_clemataria    -5.5459804  4.2414758
    ## cat_spIridopsis_ephyraria    -11.0463596 -1.5266777
    ## cat_spLithophane_antennata    -6.4797034  9.4566451
    ## cat_spLomographa_vestaliata   -6.5532645  2.9256557
    ## cat_spLymantria_dispar        -9.4433366 -4.8080858
    ## cat_spMelanolophia_canadaria  -3.4138930  0.2440997
    ## cat_spMorrisonia_confusa      -7.8747589 -3.6645575
    ## cat_spNadata_gibbosa          -0.3027739  7.4851964
    ## cat_spNola_triquetrana       -10.1185848 -4.8190462
    ## cat_spOrthosia_rubescens      -1.2755789  2.8962312
    ## cat_spPapilio_glaucus        -12.7389562  2.7421220
    ## cat_spParallelia_bistriaris  -11.2412267 -3.1641119
    ## cat_spPyreferra_hesperidago   -3.1822370  3.3858083
    ## cat_spSperanza_pustularia     -2.9108730  1.6565441
    ## [1] 0.9556275
    ## 
    ## Call:
    ## glm(formula = log(tach_prop + 1e-04) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.2061  -0.2072   0.0000   0.2138   1.8974  
    ## 
    ## Coefficients:
    ##                               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -2.003325   0.679888  -2.947  0.01062 *  
    ## site.delta.bird.LRR          -0.936581   0.550006  -1.703  0.11068    
    ## site.delta.ant.LRR            0.131767   0.679921   0.194  0.84912    
    ## HostPlantBE                   0.000269   0.913528   0.000  0.99977    
    ## HostPlantHI                  -0.888210   0.747840  -1.188  0.25471    
    ## HostPlantRM                   0.428763   0.744985   0.576  0.57407    
    ## HostPlantRO                  -0.991127   0.875377  -1.132  0.27656    
    ## HostPlantWH                   0.005052   0.741060   0.007  0.99466    
    ## HostPlantWO                  -3.118476   0.912526  -3.417  0.00417 ** 
    ## cat_spCrocidographa_normani   0.201770   1.224892   0.165  0.87152    
    ## cat_spEnnomos_subsignaria     1.245449   1.269335   0.981  0.34316    
    ## cat_spEutrapela_clemataria   -0.795900   1.190093  -0.669  0.51452    
    ## cat_spIridopsis_ephyraria    -7.008082   0.922843  -7.594 2.50e-06 ***
    ## cat_spLithophane_antennata    1.251435   1.303845   0.960  0.35344    
    ## cat_spLomographa_vestaliata  -1.476154   1.408136  -1.048  0.31226    
    ## cat_spLymantria_dispar       -7.013492   0.906927  -7.733 2.03e-06 ***
    ## cat_spMelanolophia_canadaria -1.726260   0.677781  -2.547  0.02326 *  
    ## cat_spMorrisonia_confusa     -6.097210   0.731307  -8.337 8.44e-07 ***
    ## cat_spNadata_gibbosa          2.320487   1.297989   1.788  0.09547 .  
    ## cat_spNola_triquetrana       -7.191749   1.208172  -5.953 3.53e-05 ***
    ## cat_spOrthosia_rubescens      0.642734   0.723033   0.889  0.38905    
    ## cat_spPapilio_glaucus        -4.457098   2.253947  -1.977  0.06802 .  
    ## cat_spParallelia_bistriaris  -7.330204   1.195139  -6.133 2.59e-05 ***
    ## cat_spPyreferra_hesperidago   0.333402   1.256820   0.265  0.79466    
    ## cat_spSperanza_pustularia    -0.641374   1.220285  -0.526  0.60740    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 1.009937)
    ## 
    ##     Null deviance: 406.229  on 38  degrees of freedom
    ## Residual deviance:  14.139  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: 123.11
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %      97.5 %
    ## (Intercept)                  -3.3358809 -0.67076952
    ## site.delta.bird.LRR          -2.0145725  0.14141031
    ## site.delta.ant.LRR           -1.2008531  1.46438715
    ## HostPlantBE                  -1.7902130  1.79075105
    ## HostPlantHI                  -2.3539500  0.57753067
    ## HostPlantRM                  -1.0313807  1.88890757
    ## HostPlantRO                  -2.7068349  0.72458077
    ## HostPlantWH                  -1.4473985  1.45750252
    ## HostPlantWO                  -4.9069937 -1.32995760
    ## cat_spCrocidographa_normani  -2.1989751  2.60251517
    ## cat_spEnnomos_subsignaria    -1.2424030  3.73330045
    ## cat_spEutrapela_clemataria   -3.1284394  1.53664006
    ## cat_spIridopsis_ephyraria    -8.8168211 -5.19934302
    ## cat_spLithophane_antennata   -1.3040530  3.80692367
    ## cat_spLomographa_vestaliata  -4.2360501  1.28374255
    ## cat_spLymantria_dispar       -8.7910354 -5.23594827
    ## cat_spMelanolophia_canadaria -3.0546854 -0.39783388
    ## cat_spMorrisonia_confusa     -7.5305465 -4.66387423
    ## cat_spNadata_gibbosa         -0.2235248  4.86449904
    ## cat_spNola_triquetrana       -9.5597229 -4.82377404
    ## cat_spOrthosia_rubescens     -0.7743840  2.05985188
    ## cat_spPapilio_glaucus        -8.8747526 -0.03944373
    ## cat_spParallelia_bistriaris  -9.6726339 -4.98777436
    ## cat_spPyreferra_hesperidago  -2.1299199  2.79672446
    ## cat_spSperanza_pustularia    -3.0330887  1.75034065
    ## [1] 0.9364455
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, family = quasibinomial(), 
    ##     data = modeling_data_density, weights = 1/site.varDRR.birds + 
    ##         (site.delta.bird.LRR + site.delta.ant.LRR))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -5.4795  -0.7324   0.0000   0.2191   6.5147  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.725e+00  3.121e-01  -5.529 7.43e-05 ***
    ## site.delta.bird.LRR          -2.845e-01  2.684e-01  -1.060  0.30715    
    ## site.delta.ant.LRR            8.333e-03  3.714e-01   0.022  0.98242    
    ## HostPlantBE                  -1.877e+01  3.678e+03  -0.005  0.99600    
    ## HostPlantHI                   4.256e-01  1.329e-01   3.202  0.00639 ** 
    ## HostPlantRM                   2.535e-01  2.459e-01   1.031  0.32022    
    ## HostPlantRO                  -7.723e-02  3.662e-01  -0.211  0.83599    
    ## HostPlantWH                   1.406e-01  2.209e-01   0.637  0.53468    
    ## HostPlantWO                  -6.215e-01  2.433e-01  -2.554  0.02292 *  
    ## cat_spCrocidographa_normani  -1.994e+01  1.022e+04  -0.002  0.99847    
    ## cat_spEnnomos_subsignaria    -1.245e+00  1.358e+00  -0.917  0.37490    
    ## cat_spEutrapela_clemataria   -1.993e+01  1.329e+04  -0.001  0.99882    
    ## cat_spIridopsis_ephyraria    -9.192e-01  1.841e+00  -0.499  0.62528    
    ## cat_spLithophane_antennata    1.234e+00  1.802e+00   0.685  0.50475    
    ## cat_spLomographa_vestaliata  -2.145e+00  1.681e+00  -1.276  0.22266    
    ## cat_spLymantria_dispar       -1.217e+00  4.104e-01  -2.965  0.01024 *  
    ## cat_spMelanolophia_canadaria -1.015e+00  3.264e-01  -3.110  0.00768 ** 
    ## cat_spMorrisonia_confusa     -1.917e+00  5.909e-01  -3.245  0.00587 ** 
    ## cat_spNadata_gibbosa          1.841e-01  8.245e-01   0.223  0.82654    
    ## cat_spNola_triquetrana        1.254e-01  4.081e-01   0.307  0.76317    
    ## cat_spOrthosia_rubescens      9.517e-02  3.701e-01   0.257  0.80078    
    ## cat_spPapilio_glaucus        -2.127e+00  1.995e+00  -1.066  0.30429    
    ## cat_spParallelia_bistriaris  -1.324e+00  1.529e+00  -0.866  0.40106    
    ## cat_spPyreferra_hesperidago  -1.563e+00  6.501e-01  -2.404  0.03065 *  
    ## cat_spSperanza_pustularia    -9.012e-01  3.561e-01  -2.531  0.02400 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 14.14051)
    ## 
    ##     Null deviance: 2707.73  on 38  degrees of freedom
    ## Residual deviance:  194.78  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 18
    ##                                      2.5 %       97.5 %
    ## (Intercept)                     -2.3651481   -1.1356103
    ## site.delta.bird.LRR             -0.8079492    0.2473686
    ## site.delta.ant.LRR              -0.7151719    0.7451676
    ## HostPlantBE                  -1495.6740011  145.5072616
    ## HostPlantHI                      0.1615970    0.6831694
    ## HostPlantRM                     -0.2473719    0.7186679
    ## HostPlantRO                     -0.8131330    0.6260134
    ## HostPlantWH                     -0.3051038    0.5622220
    ## HostPlantWO                     -1.1095655   -0.1535037
    ## cat_spCrocidographa_normani             NA  896.6709566
    ## cat_spEnnomos_subsignaria       -5.3044549    0.8773609
    ## cat_spEutrapela_clemataria              NA 1594.9029892
    ## cat_spIridopsis_ephyraria       -7.7972132    1.7103376
    ## cat_spLithophane_antennata      -3.7654479    4.9286725
    ## cat_spLomographa_vestaliata     -8.0367654    0.2835543
    ## cat_spLymantria_dispar          -2.0118486   -0.3971873
    ## cat_spMelanolophia_canadaria    -1.6335530   -0.3483517
    ## cat_spMorrisonia_confusa        -3.1862929   -0.8283583
    ## cat_spNadata_gibbosa            -1.6682312    1.6862834
    ## cat_spNola_triquetrana          -0.6629701    0.9421259
    ## cat_spOrthosia_rubescens        -0.6135137    0.8422313
    ## cat_spPapilio_glaucus           -9.0775345    0.9739194
    ## cat_spParallelia_bistriaris     -6.4048251    0.9248088
    ## cat_spPyreferra_hesperidago     -2.9952982   -0.3792967
    ## cat_spSperanza_pustularia       -1.5765858   -0.1760075
    ## [1] 0.9403362
    ## 
    ## Call:
    ## glm(formula = cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.bird.LRR + 
    ##     site.delta.ant.LRR + HostPlant + cat_sp, family = quasibinomial(), 
    ##     data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##      Min        1Q    Median        3Q       Max  
    ## -1.24592  -0.20123   0.00000   0.02416   1.66583  
    ## 
    ## Coefficients:
    ##                                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.678e+00  2.865e-01  -5.857 4.17e-05 ***
    ## site.delta.bird.LRR          -2.791e-01  2.541e-01  -1.098  0.29056    
    ## site.delta.ant.LRR            5.585e-02  3.601e-01   0.155  0.87897    
    ## HostPlantBE                  -1.868e+01  4.806e+03  -0.004  0.99695    
    ## HostPlantHI                   3.459e-01  2.278e-01   1.518  0.15116    
    ## HostPlantRM                   2.016e-01  2.801e-01   0.720  0.48341    
    ## HostPlantRO                  -1.843e-01  4.171e-01  -0.442  0.66540    
    ## HostPlantWH                  -1.927e-01  2.844e-01  -0.678  0.50912    
    ## HostPlantWO                  -4.798e-01  3.799e-01  -1.263  0.22725    
    ## cat_spCrocidographa_normani  -1.994e+01  7.020e+03  -0.003  0.99777    
    ## cat_spEnnomos_subsignaria    -1.237e+00  8.113e-01  -1.525  0.14959    
    ## cat_spEutrapela_clemataria   -1.993e+01  7.062e+03  -0.003  0.99779    
    ## cat_spIridopsis_ephyraria    -8.806e-01  7.658e-01  -1.150  0.26942    
    ## cat_spLithophane_antennata    1.245e+00  6.929e-01   1.797  0.09390 .  
    ## cat_spLomographa_vestaliata  -2.165e+00  1.101e+00  -1.966  0.06943 .  
    ## cat_spLymantria_dispar       -9.600e-01  4.084e-01  -2.351  0.03391 *  
    ## cat_spMelanolophia_canadaria -9.777e-01  2.966e-01  -3.297  0.00530 ** 
    ## cat_spMorrisonia_confusa     -2.017e+00  5.449e-01  -3.702  0.00237 ** 
    ## cat_spNadata_gibbosa          2.629e-03  6.443e-01   0.004  0.99680    
    ## cat_spNola_triquetrana        4.101e-01  4.182e-01   0.981  0.34334    
    ## cat_spOrthosia_rubescens      1.343e-01  3.417e-01   0.393  0.70026    
    ## cat_spPapilio_glaucus        -2.209e+00  1.155e+00  -1.914  0.07635 .  
    ## cat_spParallelia_bistriaris  -1.324e+00  1.048e+00  -1.263  0.22714    
    ## cat_spPyreferra_hesperidago  -1.287e+00  5.998e-01  -2.146  0.04990 *  
    ## cat_spSperanza_pustularia    -8.959e-01  3.407e-01  -2.630  0.01979 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for quasibinomial family taken to be 0.9547697)
    ## 
    ##     Null deviance: 131.790  on 38  degrees of freedom
    ## Residual deviance:  13.309  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: NA
    ## 
    ## Number of Fisher Scoring iterations: 18
    ##                                      2.5 %       97.5 %
    ## (Intercept)                     -2.2582329  -1.13149739
    ## site.delta.bird.LRR             -0.7783259   0.21941851
    ## site.delta.ant.LRR              -0.6540720   0.76336638
    ## HostPlantBE                  -1600.8139438 259.38268872
    ## HostPlantHI                     -0.1034791   0.79151839
    ## HostPlantRM                     -0.3566215   0.74368660
    ## HostPlantRO                     -1.0240324   0.61617401
    ## HostPlantWH                     -0.7633518   0.35442174
    ## HostPlantWO                     -1.2658187   0.23440214
    ## cat_spCrocidographa_normani             NA 433.53925181
    ## cat_spEnnomos_subsignaria       -3.1299043   0.19392694
    ## cat_spEutrapela_clemataria              NA 477.44140813
    ## cat_spIridopsis_ephyraria       -2.7145672   0.43332345
    ## cat_spLithophane_antennata      -0.1550070   2.59247247
    ## cat_spLomographa_vestaliata     -5.0628273  -0.34021811
    ## cat_spLymantria_dispar          -1.7787845  -0.16685342
    ## cat_spMelanolophia_canadaria    -1.5465940  -0.37975344
    ## cat_spMorrisonia_confusa        -3.1831262  -1.01339076
    ## cat_spNadata_gibbosa            -1.3652466   1.20863157
    ## cat_spNola_triquetrana          -0.4149808   1.23143640
    ## cat_spOrthosia_rubescens        -0.5208203   0.82255472
    ## cat_spPapilio_glaucus           -4.6222322  -0.01261085
    ## cat_spParallelia_bistriaris     -4.1650867   0.35724650
    ## cat_spPyreferra_hesperidago     -2.5867053  -0.18557005
    ## cat_spSperanza_pustularia       -1.5510227  -0.21247133
    ## [1] 0.9594881
    ## 
    ## Call:
    ## glm(formula = log(hym_prop + 1e-04) ~ site.delta.bird.LRR + site.delta.ant.LRR + 
    ##     HostPlant + cat_sp, data = modeling_data_density, weights = 1/site.varDRR.birds + 
    ##     (site.delta.bird.LRR + site.delta.ant.LRR))
    ## 
    ## Deviance Residuals: 
    ##    Min      1Q  Median      3Q     Max  
    ## -9.706  -1.070   0.000   1.370   8.021  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                  -1.99174    1.22954  -1.620 0.127551    
    ## site.delta.bird.LRR          -1.11052    0.90670  -1.225 0.240863    
    ## site.delta.ant.LRR           -0.37047    1.38888  -0.267 0.793559    
    ## HostPlantBE                  -5.08844    1.01339  -5.021 0.000187 ***
    ## HostPlantHI                   0.56478    0.83102   0.680 0.507828    
    ## HostPlantRM                  -0.06863    1.07416  -0.064 0.949961    
    ## HostPlantRO                   0.13982    1.26136   0.111 0.913308    
    ## HostPlantWH                  -0.16690    0.96326  -0.173 0.864925    
    ## HostPlantWO                  -0.01025    0.97425  -0.011 0.991756    
    ## cat_spCrocidographa_normani  -6.00219    2.79432  -2.148 0.049702 *  
    ## cat_spEnnomos_subsignaria    -0.30042    3.34628  -0.090 0.929735    
    ## cat_spEutrapela_clemataria   -6.60862    3.32063  -1.990 0.066467 .  
    ## cat_spIridopsis_ephyraria     0.61485    3.22978   0.190 0.851752    
    ## cat_spLithophane_antennata    2.03229    5.40678   0.376 0.712642    
    ## cat_spLomographa_vestaliata  -1.71218    3.21595  -0.532 0.602795    
    ## cat_spLymantria_dispar       -0.43219    1.57262  -0.275 0.787465    
    ## cat_spMelanolophia_canadaria -0.88761    1.24106  -0.715 0.486243    
    ## cat_spMorrisonia_confusa     -3.27883    1.42841  -2.295 0.037675 *  
    ## cat_spNadata_gibbosa         -1.20372    2.64225  -0.456 0.655688    
    ## cat_spNola_triquetrana        0.31103    1.79799   0.173 0.865140    
    ## cat_spOrthosia_rubescens      0.04791    1.41538   0.034 0.973475    
    ## cat_spPapilio_glaucus        -3.71332    5.25232  -0.707 0.491176    
    ## cat_spParallelia_bistriaris  -0.48963    2.74035  -0.179 0.860754    
    ## cat_spPyreferra_hesperidago  -1.27644    2.22836  -0.573 0.575854    
    ## cat_spSperanza_pustularia    -0.53020    1.54960  -0.342 0.737321    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 38.18288)
    ## 
    ##     Null deviance: 3795.37  on 38  degrees of freedom
    ## Residual deviance:  534.56  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: 168.47
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %     97.5 %
    ## (Intercept)                   -4.401596  0.4181121
    ## site.delta.bird.LRR           -2.887618  0.6665804
    ## site.delta.ant.LRR            -3.092634  2.3516945
    ## HostPlantBE                   -7.074655 -3.1022254
    ## HostPlantHI                   -1.063998  2.1935589
    ## HostPlantRM                   -2.173950  2.0366922
    ## HostPlantRO                   -2.332391  2.6120359
    ## HostPlantWH                   -2.054855  1.7210607
    ## HostPlantWO                   -1.919746  1.8992491
    ## cat_spCrocidographa_normani  -11.478952 -0.5254296
    ## cat_spEnnomos_subsignaria     -6.859012  6.2581676
    ## cat_spEutrapela_clemataria   -13.116925 -0.1003137
    ## cat_spIridopsis_ephyraria     -5.715393  6.9450980
    ## cat_spLithophane_antennata    -8.564804 12.6293902
    ## cat_spLomographa_vestaliata   -8.015320  4.5909600
    ## cat_spLymantria_dispar        -3.514469  2.6500800
    ## cat_spMelanolophia_canadaria  -3.320038  1.5448283
    ## cat_spMorrisonia_confusa      -6.078461 -0.4791963
    ## cat_spNadata_gibbosa          -6.382439  3.9749999
    ## cat_spNola_triquetrana        -3.212977  3.8350273
    ## cat_spOrthosia_rubescens      -2.726194  2.8220130
    ## cat_spPapilio_glaucus        -14.007681  6.5810373
    ## cat_spParallelia_bistriaris   -5.860618  4.8813627
    ## cat_spPyreferra_hesperidago   -5.643956  3.0910705
    ## cat_spSperanza_pustularia     -3.567364  2.5069716
    ## [1] 0.8546829
    ## 
    ## Call:
    ## glm(formula = log(hym_prop + 1e-04) ~ site.delta.bird.LRR + site.delta.ant.LRR + 
    ##     HostPlant + cat_sp, data = modeling_data_density)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.3424  -0.3168   0.0000   0.5895   2.2596  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept)                  -2.24450    1.13212  -1.983  0.06739 . 
    ## site.delta.bird.LRR          -0.43151    0.91584  -0.471  0.64478   
    ## site.delta.ant.LRR           -0.01117    1.13217  -0.010  0.99227   
    ## HostPlantBE                  -3.98083    1.52116  -2.617  0.02030 * 
    ## HostPlantHI                   1.44053    1.24527   1.157  0.26671   
    ## HostPlantRM                   0.18878    1.24051   0.152  0.88122   
    ## HostPlantRO                   1.32902    1.45764   0.912  0.37733   
    ## HostPlantWH                  -0.22636    1.23398  -0.183  0.85709   
    ## HostPlantWO                   1.23887    1.51949   0.815  0.42854   
    ## cat_spCrocidographa_normani  -6.70578    2.03963  -3.288  0.00539 **
    ## cat_spEnnomos_subsignaria    -1.01701    2.11364  -0.481  0.63783   
    ## cat_spEutrapela_clemataria   -6.94293    1.98169  -3.504  0.00351 **
    ## cat_spIridopsis_ephyraria    -0.29583    1.53667  -0.193  0.85011   
    ## cat_spLithophane_antennata    1.29894    2.17110   0.598  0.55920   
    ## cat_spLomographa_vestaliata  -1.59037    2.34476  -0.678  0.50866   
    ## cat_spLymantria_dispar       -0.44449    1.51017  -0.294  0.77283   
    ## cat_spMelanolophia_canadaria -1.39936    1.12861  -1.240  0.23540   
    ## cat_spMorrisonia_confusa     -4.32226    1.21774  -3.549  0.00320 **
    ## cat_spNadata_gibbosa         -1.57594    2.16135  -0.729  0.47793   
    ## cat_spNola_triquetrana        0.59581    2.01179   0.296  0.77146   
    ## cat_spOrthosia_rubescens     -0.36742    1.20396  -0.305  0.76472   
    ## cat_spPapilio_glaucus        -2.03986    3.75316  -0.544  0.59533   
    ## cat_spParallelia_bistriaris  -0.74191    1.99009  -0.373  0.71488   
    ## cat_spPyreferra_hesperidago  -0.97302    2.09280  -0.465  0.64913   
    ## cat_spSperanza_pustularia    -0.54943    2.03196  -0.270  0.79080   
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 2.800283)
    ## 
    ##     Null deviance: 266.412  on 38  degrees of freedom
    ## Residual deviance:  39.204  on 14  degrees of freedom
    ##   (20 observations deleted due to missingness)
    ## AIC: 162.88
    ## 
    ## Number of Fisher Scoring iterations: 2
    ##                                   2.5 %      97.5 %
    ## (Intercept)                   -4.463405 -0.02558923
    ## site.delta.bird.LRR           -2.226530  1.36350983
    ## site.delta.ant.LRR            -2.230187  2.20784353
    ## HostPlantBE                   -6.962257 -0.99940743
    ## HostPlantHI                   -1.000152  3.88120904
    ## HostPlantRM                   -2.242584  2.62013968
    ## HostPlantRO                   -1.527894  4.18593454
    ## HostPlantWH                   -2.644906  2.19219589
    ## HostPlantWO                   -1.739281  4.21702840
    ## cat_spCrocidographa_normani  -10.703391 -2.70817899
    ## cat_spEnnomos_subsignaria     -5.159662  3.12564141
    ## cat_spEutrapela_clemataria   -10.826961 -3.05889398
    ## cat_spIridopsis_ephyraria     -3.307654  2.71599758
    ## cat_spLithophane_antennata    -2.956335  5.55421880
    ## cat_spLomographa_vestaliata   -6.186015  3.00527891
    ## cat_spLymantria_dispar        -3.404368  2.51539292
    ## cat_spMelanolophia_canadaria  -3.611386  0.81267572
    ## cat_spMorrisonia_confusa      -6.708978 -1.93553247
    ## cat_spNadata_gibbosa          -5.812106  2.66022771
    ## cat_spNola_triquetrana        -3.347227  4.53884807
    ## cat_spOrthosia_rubescens      -2.727135  1.99229870
    ## cat_spPapilio_glaucus         -9.395926  5.31620682
    ## cat_spParallelia_bistriaris   -4.642412  3.15859141
    ## cat_spPyreferra_hesperidago   -5.074822  3.12879016
    ## cat_spSperanza_pustularia     -4.531997  3.43314043
    ## [1] 0.7616056

## Session Information

    R version 4.2.3 (2023-03-15 ucrt)
    Platform: x86_64-w64-mingw32/x64 (64-bit)
    Running under: Windows 10 x64 (build 19045)

    Matrix products: default

    locale:
    [1] LC_COLLATE=English_United States.utf8 
    [2] LC_CTYPE=English_United States.utf8   
    [3] LC_MONETARY=English_United States.utf8
    [4] LC_NUMERIC=C                          
    [5] LC_TIME=English_United States.utf8    

    attached base packages:
    [1] stats     graphics  grDevices utils     datasets  methods   base     

    other attached packages:
     [1] rsq_2.5         nlme_3.1-162    gt_0.9.0        lme4_1.1-32    
     [5] Matrix_1.6-1    glmmTMB_1.1.6   sjPlot_2.8.13   magrittr_2.0.3 
     [9] readxl_1.4.2    papeR_1.0-5     xtable_1.8-4    car_3.1-2      
    [13] carData_3.0-5   cowplot_1.1.1   lubridate_1.9.2 forcats_1.0.0  
    [17] stringr_1.5.0   dplyr_1.1.1     purrr_1.0.1     readr_2.1.4    
    [21] tidyr_1.3.0     tibble_3.2.1    ggplot2_3.4.1   tidyverse_2.0.0

    loaded via a namespace (and not attached):
     [1] insight_0.19.1      gmodels_2.18.1.1    rprojroot_2.0.3    
     [4] numDeriv_2016.8-1.1 Deriv_4.1.3         tools_4.2.3        
     [7] TMB_1.9.2           backports_1.4.1     utf8_1.2.3         
    [10] R6_2.5.1            sjlabelled_1.2.0    colorspace_2.1-0   
    [13] withr_2.5.0         tidyselect_1.2.0    emmeans_1.8.5      
    [16] compiler_4.2.3      performance_0.10.2  cli_3.6.1          
    [19] xml2_1.3.3          sandwich_3.0-2      bayestestR_0.13.0  
    [22] scales_1.2.1        mvtnorm_1.1-3       digest_0.6.31      
    [25] minqa_1.2.5         rmarkdown_2.21      pkgconfig_2.0.3    
    [28] htmltools_0.5.5     fastmap_1.1.1       rlang_1.1.0        
    [31] rstudioapi_0.14     generics_0.1.3      zoo_1.8-12         
    [34] gtools_3.9.4        Rcpp_1.0.10         munsell_0.5.0      
    [37] fansi_1.0.4         abind_1.4-5         lifecycle_1.0.3    
    [40] stringi_1.7.12      multcomp_1.4-23     yaml_2.3.7         
    [43] MASS_7.3-58.2       grid_4.2.3          gdata_2.19.0       
    [46] sjmisc_2.8.9        lattice_0.20-45     ggeffects_1.2.0    
    [49] splines_4.2.3       sjstats_0.18.2      hms_1.1.3          
    [52] knitr_1.42          pillar_1.9.0        boot_1.3-28.1      
    [55] estimability_1.4.1  codetools_0.2-19    glue_1.6.2         
    [58] evaluate_0.20       modelr_0.1.11       vctrs_0.6.1        
    [61] nloptr_2.0.3        tzdb_0.3.0          cellranger_1.1.0   
    [64] gtable_0.3.3        datawizard_0.7.0    xfun_0.38          
    [67] broom_1.0.4         survival_3.5-3      timechange_0.2.0   
    [70] TH.data_1.1-2      
