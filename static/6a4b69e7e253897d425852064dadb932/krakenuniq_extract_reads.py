from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Krakenuniq_Extract_Reads_V0_1_0 = CommandToolBuilder(tool="krakenuniq_extract_reads", base_command=["krakenuniq-extract-reads"], inputs=[ToolInput(tag="in_input_fasta_file", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="input is FASTA file (default: FASTQ)")), ToolInput(tag="in_output_fasta_format", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="output in FASTA format")), ToolInput(tag="in_invert_print_reads", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="invert: print all reads not matching taxon")), ToolInput(tag="in_include_children_taxonomy", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Include children of taxonomy IDs, using TAXDB to find them")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose")), ToolInput(tag="in_reads_use_fastaq", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="paired-end reads: use a '%' in fasta/q file name as placeholder for 1 and 2")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_tax_on", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_kraken", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_slash_fast_q", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Krakenuniq_Extract_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

