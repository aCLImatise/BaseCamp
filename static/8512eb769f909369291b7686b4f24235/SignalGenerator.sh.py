from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Signalgenerator_Sh_V0_1_0 = CommandToolBuilder(tool="SignalGenerator.sh", base_command=["SignalGenerator.sh"], inputs=[ToolInput(tag="in_directory_containing_sample_files", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Directory containing sample files (required)")), ToolInput(tag="in_genome_size_file", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Genome size file (required)")), ToolInput(tag="in_output_directory_required", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output Directory (required)")), ToolInput(tag="in_directory_containing_input_files", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="directory containing input or Control files")), ToolInput(tag="in_file_get_signal", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="file with Regions to get signal for (required)")), ToolInput(tag="in_bin_size_signal", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Bin size for signal generation (default: 10)")), ToolInput(tag="in_fragment_lengths_required", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Fragment lengths (required if -t is 'single')")), ToolInput(tag="in_number_processors_used", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Number of processors used by R scripts (default: 1)")), ToolInput(tag="in_alignment_type_paired", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Alignment type, paired or single (default: single)")), ToolInput(tag="in_normalization_method_chromaverage", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Normalization method, chromAverage or depth (default: chromAverage)"))], outputs=[ToolOutput(tag="out_output_directory_required", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_required", type_hint=File()), doc=OutputDocumentation(doc="Output Directory (required)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Signalgenerator_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

