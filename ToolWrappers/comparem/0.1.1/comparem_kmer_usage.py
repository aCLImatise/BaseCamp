from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Comparem_Kmer_Usage_V0_1_0 = CommandToolBuilder(tool="comparem_kmer_usage", base_command=["comparem", "kmer_usage"], inputs=[ToolInput(tag="in_counts", input_type=Boolean(optional=True), prefix="--counts", doc=InputDocumentation(doc="output raw counts instead of frequencies")), ToolInput(tag="in_length_kmers_eg", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="length of kmers, e.g., 4 -> tetranucleotides (default:\n4)")), ToolInput(tag="in_file_ext", input_type=File(optional=True), prefix="--file_ext", doc=InputDocumentation(doc="extension of files to process (default: fna)")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of CPUs to use (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_genome_files", input_type=String(), position=0, doc=InputDocumentation(doc="input files with genomes in nucleotide space")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="output file indicating kmer usage of each genome"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comparem_Kmer_Usage_V0_1_0().translate("wdl", allow_empty_container=True)

