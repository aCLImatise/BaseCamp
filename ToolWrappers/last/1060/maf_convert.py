from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Maf_Convert_V0_1_0 = CommandToolBuilder(tool="maf_convert", base_command=["maf-convert"], inputs=[ToolInput(tag="in_protein", input_type=Boolean(optional=True), prefix="--protein", doc=InputDocumentation(doc="assume protein alignments, for psl match counts")), ToolInput(tag="in_join", input_type=String(optional=True), prefix="--join", doc=InputDocumentation(doc="join co-linear alignments separated by <= N letters")), ToolInput(tag="in_noheader", input_type=Boolean(optional=True), prefix="--noheader", doc=InputDocumentation(doc="omit any header lines from the output")), ToolInput(tag="in_dictionary", input_type=Boolean(optional=True), prefix="--dictionary", doc=InputDocumentation(doc="include dictionary of sequence lengths in sam format")), ToolInput(tag="in_dict_file", input_type=File(optional=True), prefix="--dictfile", doc=InputDocumentation(doc="get sequence dictionary from DICTFILE")), ToolInput(tag="in_read_group", input_type=String(optional=True), prefix="--readgroup", doc=InputDocumentation(doc="read group info for sam format")), ToolInput(tag="in_line_size", input_type=Int(optional=True), prefix="--linesize", doc=InputDocumentation(doc="line length for blast and html formats (default: 60)\n")), ToolInput(tag="in_axt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_blast", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_blast_tab", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chain", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_html", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_psl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tab", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

