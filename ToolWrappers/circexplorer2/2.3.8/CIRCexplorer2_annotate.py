from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Circexplorer2_Annotate_V0_1_0 = CommandToolBuilder(tool="CIRCexplorer2_annotate", base_command=["CIRCexplorer2", "annotate"], inputs=[ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="Gene annotation.")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome FASTA file.")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Input file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file.\n[default: circularRNA_known.txt]")), ToolInput(tag="in_no_fix", input_type=Boolean(optional=True), prefix="--no-fix", doc=InputDocumentation(doc="No-fix mode (useful for species with poor gene annotations).")), ToolInput(tag="in_low_confidence", input_type=Boolean(optional=True), prefix="--low-confidence", doc=InputDocumentation(doc="Extract low confidence circRNAs."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file.\n[default: circularRNA_known.txt]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circexplorer2_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

