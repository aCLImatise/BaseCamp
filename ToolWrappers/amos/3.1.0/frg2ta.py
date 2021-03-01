from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Frg2Ta_V0_1_0 = CommandToolBuilder(tool="frg2ta", base_command=["frg2ta"], inputs=[ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="-check", doc=InputDocumentation(doc="Prints out those seqnames that are shorter than MINSEQ")), ToolInput(tag="in_min_seq", input_type=Boolean(optional=True), prefix="-minseq", doc=InputDocumentation(doc="sets MINSEQ.  Default is 64")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="-filter", doc=InputDocumentation(doc="filters the .frg file for sequences shorter than MINSEQ")), ToolInput(tag="in_no_qual", input_type=Boolean(optional=True), prefix="-noqual", doc=InputDocumentation(doc="doesnt create .qual file")), ToolInput(tag="in_quali_dx", input_type=Boolean(optional=True), prefix="-qualidx", doc=InputDocumentation(doc="creates an index for the qual file [needed by cutAsm]")), ToolInput(tag="in_mates", input_type=Boolean(optional=True), prefix="-mates", doc=InputDocumentation(doc="creates a .mates file indicating which sequences are mates")), ToolInput(tag="in_no_names", input_type=Boolean(optional=True), prefix="-nonames", doc=InputDocumentation(doc="Uses Ids rather than trying to figure out seqnames")), ToolInput(tag="in_prints_version_information", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Prints version information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Frg2Ta_V0_1_0().translate("wdl", allow_empty_container=True)

