from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Genomedata_Load_Assembly_V0_1_0 = CommandToolBuilder(tool="genomedata_load_assembly", base_command=["genomedata-load-assembly"], inputs=[ToolInput(tag="in_assembly", input_type=Boolean(optional=True), prefix="--assembly", doc=InputDocumentation(doc="SEQFILE contains assembly (AGP) files instead of")), ToolInput(tag="in_file_mode", input_type=Boolean(optional=True), prefix="--file-mode", doc=InputDocumentation(doc="If specified, the Genomedata archive will be\nimplemented as a single file, with a separate h5 group\nfor each Chromosome. This is recommended if there are\na large number of Chromosomes. The default behavior is\nto use a single file if there are at least 100\nChromosomes being added.")), ToolInput(tag="in_directory_mode", input_type=Boolean(optional=True), prefix="--directory-mode", doc=InputDocumentation(doc="If specified, the Genomedata archive will be\nimplemented as a directory, with a separate file for\neach Chromosome. This is recommended if there are a\nsmall number of Chromosomes. The default behavior is\nto use a directory if there are fewer than 100\nChromosomes being added.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print status updates and diagnostic messages")), ToolInput(tag="in_assembly_report", input_type=File(optional=True), prefix="--assembly-report", doc=InputDocumentation(doc="Tab-delimited file with columnar mappings between\nchromosome naming styles.")), ToolInput(tag="in_name_style", input_type=String(optional=True), prefix="--name-style", doc=InputDocumentation(doc="Chromsome naming style to use based on ASSEMBLY-\nREPORT. Default: UCSC-style-name\n")), ToolInput(tag="in_gd_archive", input_type=String(), position=0, doc=InputDocumentation(doc="genomedata archive")), ToolInput(tag="in_seq_files", input_type=String(), position=1, doc=InputDocumentation(doc="sequences in FASTA format")), ToolInput(tag="in_sequence", input_type=String(), position=0, doc=InputDocumentation(doc="-s, --sizes           SEQFILE contains list of sizes instead of sequence"))], outputs=[], container="quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Load_Assembly_V0_1_0().translate("wdl")

