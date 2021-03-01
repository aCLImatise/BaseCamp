from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Rust_Codon_V0_1_0 = CommandToolBuilder(tool="rust_codon", base_command=["rust_codon"], inputs=[ToolInput(tag="in_directory_path_outputfile", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory  path to outputfile, default is 'codon'")), ToolInput(tag="in_transcriptome", input_type=String(), position=0, doc=InputDocumentation(doc="fasta file of transcripts, CDS start and end may be\nprovided on description line using tab separation e.g.\n>NM_0001 10 5000, otherwise it searches for longest\nORF")), ToolInput(tag="in_alignment", input_type=String(), position=1, doc=InputDocumentation(doc="sorted bam file of alignments to transcriptome")), ToolInput(tag="in_offset", input_type=String(), position=2, doc=InputDocumentation(doc="nucleotide offset to A-site")), ToolInput(tag="in_lengths", input_type=String(), position=3, doc=InputDocumentation(doc="lengths of footprints included, for example 28:32 is\n28,29,30,31,32"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rust_Codon_V0_1_0().translate("wdl", allow_empty_container=True)

