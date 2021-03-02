from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Float

Pyloh_Py_Run_Model_V0_1_0 = CommandToolBuilder(tool="PyLOH.py_run_model", base_command=["PyLOH.py", "run_model"], inputs=[ToolInput(tag="in_allele_number_max", input_type=Int(optional=True), prefix="--allelenumber_max", doc=InputDocumentation(doc="Maximum copy number of each allele allows to take.\nDefault is 2.")), ToolInput(tag="in_priors", input_type=File(optional=True), prefix="--priors", doc=InputDocumentation(doc="File of the prior distribution. If not provided, use\nuniform prior. Default is None.")), ToolInput(tag="in_max_iters", input_type=Int(optional=True), prefix="--max_iters", doc=InputDocumentation(doc="Maximum number of iterations for training. Default is\n100.")), ToolInput(tag="in_stop_value", input_type=Float(optional=True), prefix="--stop_value", doc=InputDocumentation(doc="Stop value of the EM algorithm for training. If the\nchange of log-likelihood is lower than this value,\nstop training. Default is 1e-7.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyloh_Py_Run_Model_V0_1_0().translate("wdl", allow_empty_container=True)

