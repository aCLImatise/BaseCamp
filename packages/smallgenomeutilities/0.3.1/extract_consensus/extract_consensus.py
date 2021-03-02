from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String, Directory

Extract_Consensus_V0_1_0 = CommandToolBuilder(tool="extract_consensus", base_command=["extract_consensus"], inputs=[ToolInput(tag="in_fasta_file_containing", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Fasta file containing the reference sequence (default: None)")), ToolInput(tag="in_region_interested_", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Region of interested in BED format, e.g. HXB2:2253-3869. Loci\nare interpreted using 0-based indexing, and a half-open interval\nis used, i.e, [start:end) (default: None)")), ToolInput(tag="in_minimum_read_depth", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Minimum read depth for reporting variants per locus (default:\n50)")), ToolInput(tag="in_minimum_phred_score", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum phred quality score a base has to reach to be counted\n(default: 15)")), ToolInput(tag="in_minimum_frequency_ambiguous", input_type=Float(optional=True), prefix="-a", doc=InputDocumentation(doc="Minimum frequency for an ambiguous nucleotide (default: 0.05)")), ToolInput(tag="in_read_count_reported", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Read count below which ambiguous base 'n' is reported (default:\nNone)")), ToolInput(tag="in_patientsample_identifier_default", input_type=String(optional=True), prefix="-N", doc=InputDocumentation(doc="Patient/sample identifier (default: CONSENSUS)")), ToolInput(tag="in_output_directory_default", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory (default: /)")), ToolInput(tag="in_input_bam_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BAM file (default: None)"))], outputs=[ToolOutput(tag="out_output_directory_default", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_default", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: /)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Consensus_V0_1_0().translate("wdl", allow_empty_container=True)

