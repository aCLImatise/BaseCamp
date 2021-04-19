from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Dqc_Admin_Tools_Py_Prepare_Reference_Hmm_V0_1_0 = CommandToolBuilder(tool="dqc_admin_tools.py_prepare_reference_hmm", base_command=["dqc_admin_tools.py", "prepare_reference_hmm"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug mode")), ToolInput(tag="in_ref_dir", input_type=File(optional=True), prefix="--ref_dir", doc=InputDocumentation(doc="DQC reference directory (default: DQC_REFERENCE_DIR)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="Number of threads for parallel processing (default:1)\n"))], outputs=[], container="quay.io/biocontainers/dfast_qc:0.2.8--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dqc_Admin_Tools_Py_Prepare_Reference_Hmm_V0_1_0().translate("wdl")

