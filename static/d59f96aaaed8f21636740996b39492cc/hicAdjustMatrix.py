from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Hicadjustmatrix_V0_1_0 = CommandToolBuilder(tool="hicAdjustMatrix", base_command=["hicAdjustMatrix"], inputs=[ToolInput(tag="in_chromosomes", input_type=Array(t=String(), optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="List of chromosomes to keep/remove.")), ToolInput(tag="in_regions", input_type=File(optional=True), prefix="--regions", doc=InputDocumentation(doc="BED file which stores a list of regions to\nkeep/remove.")), ToolInput(tag="in_mask_bad_regions", input_type=String(optional=True), prefix="--maskBadRegions", doc=InputDocumentation(doc="Bad regions are identified and masked.")), ToolInput(tag="in_matrix", input_type=File(optional=True), prefix="--matrix", doc=InputDocumentation(doc="The Hi-C matrix to adjust. HiCExplorer supports the\nfollowing file formats: h5 (native HiCExplorer format)\nand cool.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the adjusted matrix.")), ToolInput(tag="in_action", input_type=String(optional=True), prefix="--action", doc=InputDocumentation(doc="Keep, remove or mask the list of specified\nchromosomes/regions. keep/remove: These options\nkeep/remove bins of matrix by deleting them. This may\ncause issue plotting the matrix if several parts of a\nsingle chromosome are going to be deleted. In that\ncase, one may consider using the mask option (Default:\nkeep)."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the adjusted matrix."))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicadjustmatrix_V0_1_0().translate("wdl")

