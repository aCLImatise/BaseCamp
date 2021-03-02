from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Directory, String

Lace_Py_V0_1_0 = CommandToolBuilder(tool="Lace.py", base_command=["Lace.py"], inputs=[ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of cores you wish to run the job on\n(default = 1)")), ToolInput(tag="in_alternate", input_type=Boolean(optional=True), prefix="--alternate", doc=InputDocumentation(doc="Create alternate annotations and create metrics on\nsuccess of SuperTranscript Building")), ToolInput(tag="in_tidy", input_type=Boolean(optional=True), prefix="--tidy", doc=InputDocumentation(doc="Move intermediate fasta files into folder: SuperFiles\nafter running")), ToolInput(tag="in_max_tran", input_type=Int(optional=True), prefix="--maxTran", doc=InputDocumentation(doc="Set a maximum for the number of transcripts from a\ncluster to be included for building the\nSuperTranscript (default=50).")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output Directory\n")), ToolInput(tag="in_genome_file", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the fasta file containing all transcripts")), ToolInput(tag="in_cluster_file", input_type=String(), position=1, doc=InputDocumentation(doc="The name of the text file with the transcript to\ncluster mapping"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output Directory\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lace_Py_V0_1_0().translate("wdl", allow_empty_container=True)

