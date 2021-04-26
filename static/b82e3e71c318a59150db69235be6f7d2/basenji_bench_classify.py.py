from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Basenji_Bench_Classify_Py_V0_1_0 = CommandToolBuilder(tool="basenji_bench_classify.py", base_command=["basenji_bench_classify.py"], inputs=[ToolInput(tag="in_crossvalidation_iterations", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="Cross-validation iterations [Default: 1]")), ToolInput(tag="in_dimension_reduction_model", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="Dimension reduction model")), ToolInput(tag="in_parallel_threads_passed", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Parallel threads passed to scikit-learn n_jobs\n[Default: 1]")), ToolInput(tag="in_save_predictions_iterations", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Save predictions across iterations [Default: False]")), ToolInput(tag="in_stat", input_type=Int(optional=True), prefix="--stat", doc=InputDocumentation(doc="HDF5 key stat to consider. [Default: SAD]")), ToolInput(tag="in_sad_p_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sad_n_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Bench_Classify_Py_V0_1_0().translate("wdl")

