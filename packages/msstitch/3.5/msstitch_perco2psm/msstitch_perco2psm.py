from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Array, String, Int

Msstitch_Perco2Psm_V0_1_0 = CommandToolBuilder(tool="msstitch_perco2psm", base_command=["msstitch", "perco2psm"], inputs=[ToolInput(tag="in_directory_to_output", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Directory to output in")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_multiple_input_files", input_type=Array(t=String(), optional=True), prefix="-i", doc=InputDocumentation(doc="Multiple input files of {} format")), ToolInput(tag="in_mz_ids", input_type=Array(t=String(), optional=True), prefix="--mzids", doc=InputDocumentation(doc="MzIdentML output files belonging to PSM table TSV\nfiles, use same order as for TSVs")), ToolInput(tag="in_per_co", input_type=File(optional=True), prefix="--perco", doc=InputDocumentation(doc="Percolator XML output file")), ToolInput(tag="in_filt_pep", input_type=String(optional=True), prefix="--filtpep", doc=InputDocumentation(doc="Peptide q-value cutoff level as a floating point")), ToolInput(tag="in_number", input_type=Int(), position=0, doc=InputDocumentation(doc="--filtpsm FILTPSM     PSM q-value cutoff level as a floating point number"))], outputs=[ToolOutput(tag="out_directory_to_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_to_output", type_hint=File()), doc=OutputDocumentation(doc="Directory to output in")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file")), ToolOutput(tag="out_per_co", output_type=File(optional=True), selector=InputSelector(input_to_select="in_per_co", type_hint=File()), doc=OutputDocumentation(doc="Percolator XML output file"))], container="quay.io/biocontainers/msstitch:3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Perco2Psm_V0_1_0().translate("wdl")

