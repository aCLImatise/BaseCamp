from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Eval_Multi_Gtf_Pl_V0_1_0 = CommandToolBuilder(tool="eval_multi_gtf.pl", base_command=["eval_multi_gtf.pl"], inputs=[ToolInput(tag="in_eval_path", input_type=Boolean(optional=True), prefix="--EVAL_PATH", doc=InputDocumentation(doc="path to eval package (will try to guess from availability of evaluate_gtf.pl, but if that does not work because you don't have this script in your path, set with this command line option)."))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eval_Multi_Gtf_Pl_V0_1_0().translate("wdl")

