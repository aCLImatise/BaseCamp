from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Float, String

Sketchy_Online_Simulate_V0_1_0 = CommandToolBuilder(tool="sketchy_online_simulate", base_command=["sketchy", "online", "simulate"], inputs=[ToolInput(tag="in_fast_x", input_type=File(optional=True), prefix="--fastx", doc=InputDocumentation(doc="Path to Fast{a,q} file to simulate run\n[required]  [required]")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to Fast{a,q} index file from previous\nsimulation [none]")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory for run simulation [run_sim]")), ToolInput(tag="in_reads_per_file", input_type=Int(optional=True), prefix="--reads_per_file", doc=InputDocumentation(doc="Number of reads per Fast{a,q} to simulate live\nbasecalling [4000]")), ToolInput(tag="in_barcodes", input_type=Int(optional=True), prefix="--barcodes", doc=InputDocumentation(doc="Barcode integers, comma-separated e.g. 1,2,3,4\n[None]")), ToolInput(tag="in_speed_up", input_type=Float(optional=True), prefix="--speedup", doc=InputDocumentation(doc="Speed up the simulation by this factor [1.0]")), ToolInput(tag="in_start_time_regex", input_type=String(optional=True), prefix="--start_time_regex", doc=InputDocumentation(doc="Read start time regex to parse from read")), ToolInput(tag="in_test", input_type=String(optional=True), prefix="--test", doc=InputDocumentation(doc="Run simple test mode; see docs [false]")), ToolInput(tag="in_headers_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--barcode_regex TEXT          Barcode regex to parse from read headers."))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for run simulation [run_sim]"))], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Online_Simulate_V0_1_0().translate("wdl")

