from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File, Int

Alleyoop_Positional_Tracks_V0_1_0 = CommandToolBuilder(tool="alleyoop_positional_tracks", base_command=["alleyoop", "positional-tracks"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="[-c CONVERSIONTHRESHOLD]")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory for bedGraph files.")), ToolInput(tag="in_snp_directory", input_type=Directory(optional=True), prefix="--snp-directory", doc=InputDocumentation(doc="Directory containing SNP files.")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="Skip SNP step and provide custom variant file.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta file")), ToolInput(tag="in_conversion_threshold", input_type=Int(optional=True), prefix="--conversion-threshold", doc=InputDocumentation(doc="Number of T>C conversions required to count read as\nT>C read (default: 1)")), ToolInput(tag="in_coverage_cut_off", input_type=Int(optional=True), prefix="--coverage-cutoff", doc=InputDocumentation(doc="Minimum coverage required to report nucleotide-\nconversion rate (default: 1). Anything less than 1\nwill be set to 1 to avoid division by zero.")), ToolInput(tag="in_min_base_qual", input_type=Int(optional=True), prefix="--min-base-qual", doc=InputDocumentation(doc="Min base quality for T -> C conversions (default: 27)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Thread number (default: 1)\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Bam file(s)"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for bedGraph files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleyoop_Positional_Tracks_V0_1_0().translate("wdl", allow_empty_container=True)

