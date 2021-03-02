from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Directory

Anvi_Script_Pfam_Accessions_To_Hmms_Directory_V0_1_0 = CommandToolBuilder(tool="anvi_script_pfam_accessions_to_hmms_directory", base_command=["anvi-script-pfam-accessions-to-hmms-directory"], inputs=[ToolInput(tag="in_pfam_accessions_list", input_type=Array(t=String(), optional=True), prefix="--pfam-accessions-list", doc=InputDocumentation(doc="One or more PFAM accession IDs (such as PF14437.6). If\nyou have multiple accessions, you can separate them\nfrom each other with a space. If you have too many,\nconsider using the `--pfam-accessions-file` parameter\ninstead. (default: None)")), ToolInput(tag="in_pfam_accessions_file", input_type=File(optional=True), prefix="--pfam-accessions-file", doc=InputDocumentation(doc="A single column text file where each column is a\nsingle PFAM accession ID (such as PF14437.6). You may\nhave as many accession ids as you like in this file.\n(default: None)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="Output directory for the anvi'o-formatted HMMs. Choose\nthe name wisely as this will be the name that will\nappear in the contigs database after you provide it\nwith `-H` flag to `anvi-run-hmms`. We suggest you to\nuse a name that does not include an of those millenial\ncharacters (like space, question mark, comma, and\nsuch, you know). (default: None)"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory for the anvi'o-formatted HMMs. Choose\nthe name wisely as this will be the name that will\nappear in the contigs database after you provide it\nwith `-H` flag to `anvi-run-hmms`. We suggest you to\nuse a name that does not include an of those millenial\ncharacters (like space, question mark, comma, and\nsuch, you know). (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Pfam_Accessions_To_Hmms_Directory_V0_1_0().translate("wdl")

