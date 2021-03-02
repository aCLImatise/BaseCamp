from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Stag_Splitter_Pl_V0_1_0 = CommandToolBuilder(tool="stag_splitter.pl", base_command=["stag-splitter.pl"], inputs=[ToolInput(tag="in_parser_formatformat_one", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\nxml assumed as default")), ToolInput(tag="in_writer_formatformat_one", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="-split", doc=InputDocumentation(doc="|s NODE\nnode to split on")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="-name", doc=InputDocumentation(doc="|n NODE\nfield/element to use when naming files\nwill use surrogate IDs if this argument not specified")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="-dir", doc=InputDocumentation(doc="|d DIR\nwrite files to this directory\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="eg; if we have\n<top>\n<a>\n<b>foo</b>\n<c>yah</c>\n<d>\n<e>xxx</e>\n</d>\n</a>\n<a>\n<b>bar</b>\n<d>\n<e>wibble</e>\n</d>\n</a>\n</top>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Splitter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

