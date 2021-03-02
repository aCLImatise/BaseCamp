from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Bank2Contig_V0_1_0 = CommandToolBuilder(tool="bank2contig", base_command=["bank2contig"], inputs=[ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_use_eids_default", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Use EIDs for names (DEFAULT)")), ToolInput(tag="in_use_iids_names", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Use IIDs for names")), ToolInput(tag="in_dump_just_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Dump just the contig eids listed in file")), ToolInput(tag="in_dump_just_iids", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Dump just the contig iids listed in file")), ToolInput(tag="in_just_create_file", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Just create a layout file (no sequence)")), ToolInput(tag="in_simple_layout_style", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Simple Layout style")), ToolInput(tag="in_sam_format_httpsamtoolssfnet", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="SAM Format (http://samtools.sf.net)")), ToolInput(tag="in_xml_format_suitable", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="XML Format suitable for DNPTrapper")), ToolInput(tag="in_bank_two_contig", input_type=Int(), position=0, doc=InputDocumentation(doc="[options]  <bank path>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank2Contig_V0_1_0().translate("wdl", allow_empty_container=True)

