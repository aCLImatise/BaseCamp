from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean

Balrog_V0_1_0 = CommandToolBuilder(tool="balrog", base_command=["balrog"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="Path to input fasta or gzipped fasta")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Path to output annotation")), ToolInput(tag="in_temp", input_type=Directory(optional=True), prefix="--temp", doc=InputDocumentation(doc="Directory to store temp files (default: /tmp)")), ToolInput(tag="in_max_overlap", input_type=Int(optional=True), prefix="--max-overlap", doc=InputDocumentation(doc="Maximum allowable overlap between genes in\nnucleotides (default: 60)")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum allowable gene length in nucleotides\n(default: 90)")), ToolInput(tag="in_table", input_type=Int(optional=True), prefix="--table", doc=InputDocumentation(doc="Nucleotide to amino acid translation table. 11\nfor most bacteria/archaea, 4 for\nMycoplasma/Spiroplasma. (default: 11)")), ToolInput(tag="in_max_connections", input_type=Int(optional=True), prefix="--max-connections", doc=InputDocumentation(doc="Maximum number of forward connections in the\ndirected acyclic graph used to find a set of\ncoherent genes in each genome. (default: 50)")), ToolInput(tag="in_gene_batch_size", input_type=Int(optional=True), prefix="--gene-batch-size", doc=InputDocumentation(doc="Batch size for the temporal convolutional\nnetwork used to score genes. (default: 128)")), ToolInput(tag="in_tis_batch_size", input_type=Int(optional=True), prefix="--TIS-batch-size", doc=InputDocumentation(doc="Batch size for the temporal convolutional\nnetwork used to score TIS. (default: 1024)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output, set --verbose=false to suppress\noutput text (default: true)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Path to output annotation"))], container="quay.io/biocontainers/balrog:0.5.1--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Balrog_V0_1_0().translate("wdl")

