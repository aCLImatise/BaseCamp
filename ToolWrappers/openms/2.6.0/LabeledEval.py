from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, Boolean

Labeledeval_V0_1_0 = CommandToolBuilder(tool="LabeledEval", base_command=["LabeledEval"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Feature result file (valid formats: 'featureXML')")), ToolInput(tag="in_truth", input_type=File(optional=True), prefix="-truth", doc=InputDocumentation(doc="*     Expected result file. (valid formats: 'consensusXML')")), ToolInput(tag="in_rt_to_l", input_type=Float(optional=True), prefix="-rt_tol", doc=InputDocumentation(doc="Maximum allowed retention time deviation (default: '20.0')")), ToolInput(tag="in_mz_to_l", input_type=Float(optional=True), prefix="-mz_tol", doc=InputDocumentation(doc="Maximum allowed m/z deviation (divided by charge) (default: '0.25')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Labeledeval_V0_1_0().translate("wdl")

