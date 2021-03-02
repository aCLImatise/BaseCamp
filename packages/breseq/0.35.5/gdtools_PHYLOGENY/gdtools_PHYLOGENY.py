from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gdtools_Phylogeny_V0_1_0 = CommandToolBuilder(tool="gdtools_PHYLOGENY", base_command=["gdtools", "PHYLOGENY"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="produce output for each mutation counted.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path to output file with added mutation data. (DEFAULT=.)")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_missing_as_ancestral", input_type=Boolean(optional=True), prefix="--missing-as-ancestral", doc=InputDocumentation(doc="Count missing data (mutations in UN regions) as the ancestral allele rather than as an unknown allele (N).")), ToolInput(tag="in_phylogeny_aware", input_type=Boolean(optional=True), prefix="--phylogeny-aware", doc=InputDocumentation(doc="Check the optional 'phylogeny_id' field when deciding if entries are equivalent"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="path to output file with added mutation data. (DEFAULT=.)"))], container="quay.io/biocontainers/breseq:0.35.5--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Phylogeny_V0_1_0().translate("wdl")

