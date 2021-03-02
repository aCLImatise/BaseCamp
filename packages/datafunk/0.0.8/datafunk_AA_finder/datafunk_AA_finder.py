from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Datafunk_Aa_Finder_V0_1_0 = CommandToolBuilder(tool="datafunk_AA_finder", base_command=["datafunk", "AA_finder"], inputs=[ToolInput(tag="in_input_fast_a", input_type=Int(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Alignment (to Wuhan-Hu-1) in Fasta format to type")), ToolInput(tag="in_codons_file", input_type=File(optional=True), prefix="--codons-file", doc=InputDocumentation(doc="Input CSV file with codon locations to parse. Format\nis: name,1-based start position of codon (dont include\na header line), eg: d614g,23402")), ToolInput(tag="in_genotypes_table", input_type=File(optional=True), prefix="--genotypes-table", doc=InputDocumentation(doc="CSV file with amino acid typing results to write.\nReturns the amino acid at each position in --codons-\nfile for each sequence in --input-fasta, or 'X' for\nmissing data\n"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Aa_Finder_V0_1_0().translate("wdl")

