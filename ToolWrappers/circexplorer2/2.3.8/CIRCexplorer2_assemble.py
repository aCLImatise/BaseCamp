from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean

Circexplorer2_Assemble_V0_1_0 = CommandToolBuilder(tool="CIRCexplorer2_assemble", base_command=["CIRCexplorer2", "assemble"], inputs=[ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="Gene annotation file.")), ToolInput(tag="in_top_hat", input_type=Directory(optional=True), prefix="--tophat", doc=InputDocumentation(doc="TopHat mapping folder.")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory. [default: assemble]")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="Running threads. [default: 10]")), ToolInput(tag="in_bb", input_type=Boolean(optional=True), prefix="--bb", doc=InputDocumentation(doc="Convert assembly results to BigBed.")), ToolInput(tag="in_chrom_size", input_type=Int(optional=True), prefix="--chrom-size", doc=InputDocumentation(doc="Chrom size file for converting to BigBed.")), ToolInput(tag="in_remove_rrna", input_type=Boolean(optional=True), prefix="--remove-rRNA", doc=InputDocumentation(doc="Ignore rRNA during assembling (only for human hg19).")), ToolInput(tag="in_max_bundle_frags", input_type=Int(optional=True), prefix="--max-bundle-frags", doc=InputDocumentation(doc="Cufflinks --max-bundle-frags option."))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory. [default: assemble]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circexplorer2_Assemble_V0_1_0().translate("wdl", allow_empty_container=True)

