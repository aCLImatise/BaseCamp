from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Virulign_V0_1_0 = CommandToolBuilder(tool="virulign", base_command=["virulign"], inputs=[ToolInput(tag="in_export_kind", input_type=Boolean(optional=True), prefix="--exportKind", doc=InputDocumentation(doc="[Mutations PairwiseAlignments GlobalAlignment PositionTable MutationTable]")), ToolInput(tag="in_export_alphabet", input_type=Boolean(optional=True), prefix="--exportAlphabet", doc=InputDocumentation(doc="[AminoAcids Nucleotides]")), ToolInput(tag="in_export_with_insertions", input_type=Boolean(optional=True), prefix="--exportWithInsertions", doc=InputDocumentation(doc="[yes no]")), ToolInput(tag="in_export_reference_sequence", input_type=Boolean(optional=True), prefix="--exportReferenceSequence", doc=InputDocumentation(doc="[no yes]")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="[no yes]")), ToolInput(tag="in_reference_dot_fast_a", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_orf_description_dot_xml", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences_dot_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/virulign:1.0.2--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virulign_V0_1_0().translate("wdl")

