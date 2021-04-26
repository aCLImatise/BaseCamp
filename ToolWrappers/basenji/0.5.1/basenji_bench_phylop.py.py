from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Basenji_Bench_Phylop_Py_V0_1_0 = CommandToolBuilder(tool="basenji_bench_phylop.py", base_command=["basenji_bench_phylop.py"], inputs=[ToolInput(tag="in_pca_ncomponents", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="PCA n_components [Default: none]")), ToolInput(tag="in_number_random_forest", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="Number of random forest estimators [Default: 100]")), ToolInput(tag="in_phylop_fasta_genome", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="PhyloP and FASTA genome [Default: ce11]")), ToolInput(tag="in_crossvalidation_iterations", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="Cross-validation iterations [Default: 1]")), ToolInput(tag="in_parallel_threads_passed", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Parallel threads passed to scikit-learn n_jobs\n[Default: 1]")), ToolInput(tag="in_stat", input_type=Int(optional=True), prefix="--stat", doc=InputDocumentation(doc="HDF5 key stat to consider. [Default: sum]")), ToolInput(tag="in_scores_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Bench_Phylop_Py_V0_1_0().translate("wdl")

