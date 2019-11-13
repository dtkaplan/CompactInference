# Wheat  export data from Hooker & Yule
# Note on Estimating the Relative Influence of Two Variables upon a Third
# Author(s): R. H. Hooker and G. U. Yule
# Source: Journal of the Royal Statistical Society, Vol. 69, No. 1 (Mar., 1906), pp. 197-200 Published by: Wiley for the Royal Statistical Society
# Stable URL: https://www.jstor.org/stable/2339552

Wheat_export <- tibble::tribble(
  ~ year, ~ production,  ~ export,  ~ price,
  1890,     6123000,     716025,    31+11/12,
  1891,     6876000,    1515335,    37,
  1892,     5535000,     748673,    30 + 3/12,
  1893,     7193000,     607843,    26 + 4/12,
  1894,     6771000,     344506,    22 + 10/12,
  1895,     6279334,     500209,    23 + 1/12,
  1896,     5510965,      95531,    26 + 2/12,
  1897,     4892879,     119630,    30 + 2/12,
  1898,     6686778,     976025,    34,
  1899,     6339603,     485204,    25 + 8/12,
  1900,     4869727,       2501,    26 + 11/12,
  1901,     6765717,     366091,    26 + 9/12,
  1902,     6063506,     514607,    28 + 1/12,
  1903,     7766096,    1295566,    26 + 9/12,
  1904,     9601393,    2150025,    28 + 4/12,
)
# save(Wheat_export, file="data/Wheat_export.rda")
