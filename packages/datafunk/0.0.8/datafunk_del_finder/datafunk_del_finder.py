from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Datafunk_Del_Finder_V0_1_0 = CommandToolBuilder(tool="datafunk_del_finder", base_command=["datafunk", "del_finder"], inputs=[ToolInput(tag="in_input_fast_a", input_type=Int(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Alignment (to Wuhan-Hu-1) in Fasta format to type")), ToolInput(tag="in_deletions_file", input_type=File(optional=True), prefix="--deletions-file", doc=InputDocumentation(doc="Input CSV file with deletions type. Format is: 1-based\nstart position of deletion,length of deletion (dont\ninclude a header line), eg: 1605,3")), ToolInput(tag="in_genotypes_table", input_type=File(optional=True), prefix="--genotypes-table", doc=InputDocumentation(doc="CSV file with deletion typing results to write.\nReturns the genotype for each deletion in --deletions-\nfile for each sequence in --input-fasta: either 'ref',\n'del' or 'X' (for missing data)")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Fasta file to write")), ToolInput(tag="in_append_as_snp", input_type=Boolean(optional=True), prefix="--append-as-SNP", doc=InputDocumentation(doc="If invoked, then append the genotype of the deletion\nas a SNP on the end of the alignment\n"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Del_Finder_V0_1_0().translate("wdl")

