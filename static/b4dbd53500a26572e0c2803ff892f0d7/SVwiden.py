from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Svwiden_V0_1_0 = CommandToolBuilder(tool="SVwiden", base_command=["SVwiden"], inputs=[ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="Specify the path to the multi-fasta file that serves as a reference\nfor the structural variants in the VCF file.")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a prefix for the path to which to write a new VCF file\ncontaining the structural variants from the input VCF file, but now\nwith tags specifying widened coordinates. (Default './widened').")), ToolInput(tag="in_refname", input_type=String(optional=True), prefix="--refname", doc=InputDocumentation(doc="Specify a string to be written as the reference name in the\n##reference line of the VCF header.")), ToolInput(tag="in_noheader", input_type=Boolean(optional=True), prefix="--noheader", doc=InputDocumentation(doc="Flag option to suppress printout of the VCF header.")), ToolInput(tag="in_variants", input_type=File(optional=True), prefix="--variants", doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_complete", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_documentation", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svwiden_V0_1_0().translate("wdl", allow_empty_container=True)

