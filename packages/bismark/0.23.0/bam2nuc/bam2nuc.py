from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean

Bam2Nuc_V0_1_0 = CommandToolBuilder(tool="bam2nuc", base_command=["bam2nuc"], inputs=[ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="Output directory. Output is written to the current directory if not specified explicitly.")), ToolInput(tag="in_genome_folder", input_type=File(optional=True), prefix="--genome_folder", doc=InputDocumentation(doc="Enter the genome folder you wish to use to extract sequences from (full path only). Accepted\nformats are FastA files ending with '.fa' or '.fasta', or their gzipped versions (ending in .gz).\nSpecifying a genome folder path is mandatory.")), ToolInput(tag="in_sam_tools_path", input_type=Boolean(optional=True), prefix="--samtools_path", doc=InputDocumentation(doc="The path to your Samtools installation, e.g. /home/user/samtools/. Does not need to be specified\nexplicitly if Samtools is in the PATH already")), ToolInput(tag="in_genomic_composition_only", input_type=Directory(optional=True), prefix="--genomic_composition_only", doc=InputDocumentation(doc="Only calculate and extract the genomic sequence composition and exit thereafter. This option will\nattempt to write the genomic composition table 'genomic_nucleotide_frequencies.txt' to the genome\nfolder or to the output directory instead if that doesn't succeed."))], outputs=[ToolOutput(tag="out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. Output is written to the current directory if not specified explicitly.")), ToolOutput(tag="out_genomic_composition_only", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_genomic_composition_only", type_hint=File()), doc=OutputDocumentation(doc="Only calculate and extract the genomic sequence composition and exit thereafter. This option will\nattempt to write the genomic composition table 'genomic_nucleotide_frequencies.txt' to the genome\nfolder or to the output directory instead if that doesn't succeed."))], container="quay.io/biocontainers/bismark:0.23.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Nuc_V0_1_0().translate("wdl")

