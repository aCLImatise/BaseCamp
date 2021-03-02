from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Count_Kmers_V0_1_0 = CommandToolBuilder(tool="count_kmers", base_command=["count-kmers"], inputs=[ToolInput(tag="in_multifasta_file_count", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="multifasta file to count")), ToolInput(tag="in_bank_reads_count", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Bank of reads to count")), ToolInput(tag="in_bank_contigs_count", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Bank of contigs to count")), ToolInput(tag="in_report_normalized_readmercountcontigmercount", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Report normalized counts (readmercount/contigmercount)")), ToolInput(tag="in_length_of_kmer", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Length of kmer")), ToolInput(tag="in_minimum_count_report", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum count to report (default: 1)")), ToolInput(tag="in_only_count_strand", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="Only count the forward strand")), ToolInput(tag="in_print_using_count", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Print using simple nmer count format: mer count")), ToolInput(tag="in_just_print_statistics", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Just print statistics on unique mers"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Count_Kmers_V0_1_0().translate("wdl", allow_empty_container=True)

