from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Edta_Processi_Pl_V0_1_0 = CommandToolBuilder(tool="EDTA_processI.pl", base_command=["EDTA_processI.pl"], inputs=[ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="-genome", doc=InputDocumentation(doc="[File]  The genome FASTA")), ToolInput(tag="in_ltr", input_type=Boolean(optional=True), prefix="-ltr", doc=InputDocumentation(doc="[File]  The raw LTR library FASTA")), ToolInput(tag="in_tir", input_type=Boolean(optional=True), prefix="-tir", doc=InputDocumentation(doc="[File]  The raw TIR library FASTA")), ToolInput(tag="in_heli_tron", input_type=Boolean(optional=True), prefix="-helitron", doc=InputDocumentation(doc="[File]  The raw Helitron library FASTA")), ToolInput(tag="in_min_diff_ltr", input_type=Boolean(optional=True), prefix="-mindiff_ltr", doc=InputDocumentation(doc="[float] The minimum fold difference in richness between LTRs and contaminants (default: 1)")), ToolInput(tag="in_min_diff_tir", input_type=Boolean(optional=True), prefix="-mindiff_tir", doc=InputDocumentation(doc="[float] The minimum fold difference in richness between TIRs and contaminants (default: 1)")), ToolInput(tag="in_min_diff_hel", input_type=Boolean(optional=True), prefix="-mindiff_hel", doc=InputDocumentation(doc="[float] The minimum fold difference in richness between Helitrons and contaminants (default: 4)")), ToolInput(tag="in_repeatmasker", input_type=Boolean(optional=True), prefix="-repeatmasker", doc=InputDocumentation(doc="[path]    The directory containing RepeatMasker (default: read from ENV)")), ToolInput(tag="in_blast", input_type=Boolean(optional=True), prefix="-blast", doc=InputDocumentation(doc="[path]   The directory containing Blastn (default: read from ENV)")), ToolInput(tag="in_prot_lib", input_type=Boolean(optional=True), prefix="-protlib", doc=InputDocumentation(doc="[File] Protein-coding aa sequences to be removed from TE candidates. (default lib: alluniRefprexp082813 (plant))\nYou may use uniprot_sprot database available from here:\nftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/taxonomic_divisions/")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="[int]   Number of theads to run this script"))], outputs=[], container="quay.io/biocontainers/edta:1.9.6--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edta_Processi_Pl_V0_1_0().translate("wdl")

