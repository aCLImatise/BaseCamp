from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Sidr_Runfile_V0_1_0 = CommandToolBuilder(tool="sidr_runfile", base_command=["sidr", "runfile"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="Comma-delimited input file.")), ToolInput(tag="in_tax_dump", input_type=File(optional=True), prefix="--taxdump", doc=InputDocumentation(doc="Location of the NCBI Taxonomy dump. Default is\n$BLASTDB.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Location to save the contigs identified as the target\norganism(optional).")), ToolInput(tag="in_to_remove", input_type=File(optional=True), prefix="--toremove", doc=InputDocumentation(doc="Location to save the contigs identified as not\nbelonging to the target organism (optional).")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="The identity of the target organism at the chosen\nclassification level. It is recommended to use the\norganism's phylum.")), ToolInput(tag="in_binary", input_type=Boolean(optional=True), prefix="--binary", doc=InputDocumentation(doc="Use binary target/nontarget classification.")), ToolInput(tag="in_level", input_type=String(optional=True), prefix="--level", doc=InputDocumentation(doc="The classification level to use when constructing the\nmodel. Default is 'phylum'.")), ToolInput(tag="in_sources_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Input data will be read for all variables which will be used to construct"))], outputs=[], container="quay.io/biocontainers/sidr:0.0.2a2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sidr_Runfile_V0_1_0().translate("wdl")

