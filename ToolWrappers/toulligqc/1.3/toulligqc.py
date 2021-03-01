from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Directory, Boolean

Toulligqc_V0_1_0 = CommandToolBuilder(tool="toulligqc", base_command=["toulligqc"], inputs=[ToolInput(tag="in_conf_file", input_type=File(optional=True), prefix="--conf-file", doc=InputDocumentation(doc="Specify config file")), ToolInput(tag="in_report_name", input_type=String(optional=True), prefix="--report-name", doc=InputDocumentation(doc="Report name")), ToolInput(tag="in_fast_five_source", input_type=Int(optional=True), prefix="--fast5-source", doc=InputDocumentation(doc="Fast5 file source")), ToolInput(tag="in_sequencing_summary_source", input_type=String(optional=True), prefix="--sequencing-summary-source", doc=InputDocumentation(doc="Basecaller sequencing summary source")), ToolInput(tag="in_sequencing_summary_one_d_sqr_source", input_type=Int(optional=True), prefix="--sequencing-summary-1dsqr-source", doc=InputDocumentation(doc="Basecaller 1dsq summary source")), ToolInput(tag="in_albacore_pipeline_source", input_type=String(optional=True), prefix="--albacore-pipeline-source", doc=InputDocumentation(doc="Albacore pipeline log source")), ToolInput(tag="in_fast_q_source", input_type=File(optional=True), prefix="--fastq-source", doc=InputDocumentation(doc="Fastq file source")), ToolInput(tag="in_telemetry_source", input_type=File(optional=True), prefix="--telemetry-source", doc=InputDocumentation(doc="Telemetry file source")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_barcoding", input_type=Boolean(optional=True), prefix="--barcoding", doc=InputDocumentation(doc="Barcode usage")), ToolInput(tag="in_sample_sheet_file", input_type=File(optional=True), prefix="--samplesheet-file", doc=InputDocumentation(doc="Path to sample sheet file")), ToolInput(tag="in_barcodes", input_type=String(optional=True), prefix="--barcodes", doc=InputDocumentation(doc="Coma separated barcode list")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet mode"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Toulligqc_V0_1_0().translate("wdl", allow_empty_container=True)

