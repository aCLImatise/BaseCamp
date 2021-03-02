from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File

Amplicons_Histograms_Py_V0_1_0 = CommandToolBuilder(tool="amplicons_histograms.py", base_command=["amplicons_histograms.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Specify output directory for amplicons and reads.\n[default: .]")), ToolInput(tag="in_all_files", input_type=Boolean(optional=True), prefix="--all_files", doc=InputDocumentation(doc="Generate histograms for all files ending with\n_amplicons.fasta in the directory specified with the\n-f parameter [default: False]")), ToolInput(tag="in_tax_a_map", input_type=File(optional=True), prefix="--taxa_map", doc=InputDocumentation(doc="Filepath to taxonomy mapping file, used to separate\ngraphs according to domain. [default: none]")), ToolInput(tag="in_amplicons_file_path", input_type=File(optional=True), prefix="--amplicons_filepath", doc=InputDocumentation(doc="Target amplicons files.  Separate multiple files with\na colon. [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Specify output directory for amplicons and reads.\n[default: .]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amplicons_Histograms_Py_V0_1_0().translate("wdl", allow_empty_container=True)

