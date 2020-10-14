#!/bin/bash
sdiff --strip-trailing-cr <(sort ./aliveevents/part-r-00000) <(sort ../sample_test/expected/pig/aliveevents.csv)
sdiff --strip-trailing-cr <(sort ./deadevents/part-r-00000) <(sort ../sample_test/expected/pig/deadevents.csv)
sdiff --strip-trailing-cr <(sort ./filtered/part-r-00000) <(sort ../sample_test/expected/pig/filtered.csv)
sdiff --strip-trailing-cr <(sort ./features/part-m-00000) <(sort ../sample_test/expected/pig/features)
sdiff --strip-trailing-cr <(sort ./features_aggregate/part-r-00000) <(sort ../sample_test/expected/pig/features_aggregate.csv)
sdiff --strip-trailing-cr <(sort ./features_map/part-r-00000) <(sort ../sample_test/expected/pig/features_map.csv)
sdiff --strip-trailing-cr <(sort ./features_normalized/part-r-00000) <(sort ../sample_test/expected/pig/features_normalized.csv)
sdiff --strip-trailing-cr <(sort ./samples/part-r-00000) <(sort ../sample_test/expected/pig/samples)
