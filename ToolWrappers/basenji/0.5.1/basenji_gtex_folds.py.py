from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Directory

Basenji_Gtex_Folds_Py_V0_1_0 = CommandToolBuilder(tool="basenji_gtex_folds.py", base_command=["basenji_gtex_folds.py"], inputs=[ToolInput(tag="in_alt", input_type=String(optional=True), prefix="--alt", doc=InputDocumentation(doc="Statistical test alternative [Default: two-sided]")), ToolInput(tag="in_number_crossfold_rounds", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Number of cross-fold rounds [Default:1]")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="SLURM name prefix [Default: test]")), ToolInput(tag="in_slurm_queue_run", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="SLURM queue on which to run the jobs [Default:\ngtx1080ti]")), ToolInput(tag="in_reference_directory_statistical", input_type=Directory(optional=True), prefix="-r", doc=InputDocumentation(doc="Reference directory for statistical tests")), ToolInput(tag="in_exp_dir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_params_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_data_dir", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Gtex_Folds_Py_V0_1_0().translate("wdl")

