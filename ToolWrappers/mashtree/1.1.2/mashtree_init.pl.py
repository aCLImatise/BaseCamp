from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Mashtree_Init_Pl_V0_1_0 = CommandToolBuilder(tool="mashtree_init.pl", base_command=["mashtree_init.pl"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="''   Required output sqlite file")), ToolInput(tag="in_tempdir", input_type=Boolean(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="''   If specified, this directory will not be\nremoved at the end of the script and can\nbe used to cache results for future\nanalyses.\nIf not specified, a dir will be made for you\nand then deleted at the end of this script.")), ToolInput(tag="in_num_cpus", input_type=Boolean(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="1    This script uses Perl threads.")), ToolInput(tag="in_trunc_length", input_type=Boolean(optional=True), prefix="--truncLength", doc=InputDocumentation(doc="250  How many characters to keep in a filename")), ToolInput(tag="in_sort_order", input_type=Boolean(optional=True), prefix="--sort-order", doc=InputDocumentation(doc="ABC  For neighbor-joining, the sort order can\nmake a difference. Options include:\nABC (alphabetical), random, input-order")), ToolInput(tag="in_min_depth", input_type=Boolean(optional=True), prefix="--mindepth", doc=InputDocumentation(doc="5    If mindepth is zero, then it will be\nchosen in a smart but slower method,\nto discard lower-abundance kmers."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="''   Required output sqlite file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mashtree_Init_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

