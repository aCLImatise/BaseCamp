from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Schicconsensusmatrices_V0_1_0 = CommandToolBuilder(tool="scHicConsensusMatrices", base_command=["scHicConsensusMatrices"], inputs=[ToolInput(tag="in_schic_matrix_scool", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices to\ninvestigate for QC. Needs to be in scool format\n(default: None)")), ToolInput(tag="in_clusters", input_type=File(optional=True), prefix="--clusters", doc=InputDocumentation(doc="file, -c cluster file\nText file which contains per matrix the associated\ncluster. (default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name of the consensus scool matrix. (default:\nNone)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)")), ToolInput(tag="in_sch_i_c", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name of the consensus scool matrix. (default:\nNone)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicconsensusmatrices_V0_1_0().translate("wdl", allow_empty_container=True)

