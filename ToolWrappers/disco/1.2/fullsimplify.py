from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Fullsimplify_V0_1_0 = CommandToolBuilder(tool="fullsimplify", base_command=["fullsimplify"], inputs=[ToolInput(tag="in_fs", input_type=Boolean(optional=True), prefix="-fs", doc=InputDocumentation(doc="contained single read reduction read filename(s) (comma separated fasta/fastq)")), ToolInput(tag="in_fp", input_type=Boolean(optional=True), prefix="-fp", doc=InputDocumentation(doc="contained paired-end read reduction read filename(s) in pairs of 2 (comma separated fasta/fastq)")), ToolInput(tag="in_fpi", input_type=Boolean(optional=True), prefix="-fpi", doc=InputDocumentation(doc="contained interleaved paired-end read reduction read filename(s) (comma separated fasta/fastq)")), ToolInput(tag="in_crd", input_type=Boolean(optional=True), prefix="-crd", doc=InputDocumentation(doc="Contained read file (default: none)")), ToolInput(tag="in_overlapped_edge_property", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="overlapped edge property graph filename(s) (comma separated edge list)")), ToolInput(tag="in_assembly_parameter_file", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="assembly parameter file (default: parameter.cfg)")), ToolInput(tag="in_output_filename_prefix", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="all output filename prefix")), ToolInput(tag="in_simp_th", input_type=Boolean(optional=True), prefix="-simPth", doc=InputDocumentation(doc="path to partial simplification executable")), ToolInput(tag="in_ovl", input_type=Boolean(optional=True), prefix="-ovl", doc=InputDocumentation(doc="minimum overlap length (default: 0, use all overlap found in edge property graph files)")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="-log", doc=InputDocumentation(doc="verbosity level of log messages: ERROR, WARNING, INFO (default: INFO)")), ToolInput(tag="in_param", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_filename_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename_prefix", type_hint=File()), doc=OutputDocumentation(doc="all output filename prefix"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fullsimplify_V0_1_0().translate("wdl", allow_empty_container=True)

