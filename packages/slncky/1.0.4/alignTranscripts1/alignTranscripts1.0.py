from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Aligntranscripts1_0_V0_1_0 = CommandToolBuilder(tool="alignTranscripts1.0", base_command=["alignTranscripts1.0"], inputs=[ToolInput(tag="in_gene_a", input_type=String(optional=True), prefix="--geneA", doc=InputDocumentation(doc="if bedA has more than one entry, specify which gene to")), ToolInput(tag="in_gap_extend", input_type=String(optional=True), prefix="--gap_extend", doc=InputDocumentation(doc="unmask repeats when aligning")), ToolInput(tag="in_orf", input_type=Boolean(optional=True), prefix="--orf", doc=InputDocumentation(doc="flag for checking for orfs in alignment")), ToolInput(tag="in_bed_tools_path", input_type=File(optional=True), prefix="--bedtools_path", doc=InputDocumentation(doc="Aligns genes to random background and removes\nnonsignificant alignments")), ToolInput(tag="in_pad", input_type=String(optional=True), prefix="--pad", doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_b", input_type=String(optional=True), prefix="--geneB", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_a", input_type=String(), position=0, doc=InputDocumentation(doc="bed file A")), ToolInput(tag="in_genome_fasta_a", input_type=String(), position=1, doc=InputDocumentation(doc="fasta file A")), ToolInput(tag="in_be_db", input_type=String(), position=2, doc=InputDocumentation(doc="bed file B")), ToolInput(tag="in_genome_fast_ab", input_type=String(), position=3, doc=InputDocumentation(doc="fasta file B")), ToolInput(tag="in_out_prefix", input_type=String(), position=4, doc=InputDocumentation(doc="out prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aligntranscripts1_0_V0_1_0().translate("wdl", allow_empty_container=True)

