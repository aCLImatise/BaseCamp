from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean, String

Sctools_Demultiplex_V0_1_0 = CommandToolBuilder(tool="sctools_demultiplex", base_command=["sctools_demultiplex"], inputs=[ToolInput(tag="in_barcodes_csv", input_type=File(optional=True), prefix="--barcodes-csv", doc=InputDocumentation(doc="Path to the CSV file storing the barcodes to be de-multiplexed.\nNotice that the barcode value is expected to be found in first\nposition.")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="Path of the directory where de-multiplexed files are stored.\nDefault: ..")), ToolInput(tag="in_alignment_records_batch", input_type=Int(optional=True), prefix="--alignment-records-batch", doc=InputDocumentation(doc="Maximum size of the batch of alignment records loaded in main\nmemory. Default: 1048576.")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Ouput bed files alongside bam ones.")), ToolInput(tag="in_forbidden_tags", input_type=String(optional=True), prefix="--forbidden-tags", doc=InputDocumentation(doc="Coma-separated list of tags that are forbidden in any valid\nalignment records. If an alignment record contains any of the tags\nspecified here, it is not considered for the purpose of the\nde-multiplexing procedure.")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min-mapq", doc=InputDocumentation(doc="Minimum mapping quality any alignment record must have, to be\nconsidered for the purpose of the de-multiplexing procedure.\nDefault: 0."))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Path of the directory where de-multiplexed files are stored.\nDefault: .."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sctools_Demultiplex_V0_1_0().translate("wdl", allow_empty_container=True)

