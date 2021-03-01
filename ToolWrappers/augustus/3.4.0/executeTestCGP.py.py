from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String, Int, File

Executetestcgp_Py_V0_1_0 = CommandToolBuilder(tool="executeTestCGP.py", base_command=["executeTestCGP.py"], inputs=[ToolInput(tag="in_predict", input_type=Boolean(optional=True), prefix="--predict", doc=InputDocumentation(doc="to run original prediction.")), ToolInput(tag="in_prepare", input_type=Boolean(optional=True), prefix="--prepare", doc=InputDocumentation(doc="to build a new test set from scratch.")), ToolInput(tag="in_port", input_type=Boolean(optional=True), prefix="--port", doc=InputDocumentation(doc="to build a new test set from scratch.")), ToolInput(tag="in_run", input_type=Boolean(optional=True), prefix="--run", doc=InputDocumentation(doc="to run prediction using minimal data set.")), ToolInput(tag="in_eval", input_type=Boolean(optional=True), prefix="--eval", doc=InputDocumentation(doc="to evaluate accuracy (respect to the last prediction\nobtained by launching the script with --run option).")), ToolInput(tag="in_chunks", input_type=Array(t=String(), optional=True), prefix="--chunks", doc=InputDocumentation(doc="a list of one or more positive integers indicating the\nchunk/s to be processed (refer to documentation for a\nlist of chunks over hg38.chr1).")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="to run a basic test to assess the correctness in the\ncreation of the minimal data set.")), ToolInput(tag="in_rand", input_type=Int(optional=True), prefix="--rand", doc=InputDocumentation(doc="to pick a random subset of non overlapping chunks\ncontaining at least 300 genes.")), ToolInput(tag="in_augustus_dir", input_type=File(optional=True), prefix="--augustusDir", doc=InputDocumentation(doc="path to comparative Augustus executable.")), ToolInput(tag="in_eval_dir", input_type=File(optional=True), prefix="--evalDir", doc=InputDocumentation(doc="path to Eval script.")), ToolInput(tag="in_working_dir", input_type=File(optional=True), prefix="--workingDir", doc=InputDocumentation(doc="path to data set used in testing (link).\n"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Executetestcgp_Py_V0_1_0().translate("wdl")

