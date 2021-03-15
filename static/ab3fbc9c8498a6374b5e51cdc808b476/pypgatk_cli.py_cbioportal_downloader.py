from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, String

Pypgatk_Cli_Py_Cbioportal_Downloader_V0_1_0 = CommandToolBuilder(tool="pypgatk_cli.py_cbioportal_downloader", base_command=["pypgatk_cli.py", "cbioportal-downloader"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config_file", doc=InputDocumentation(doc="Configuration file for the ensembl data\ndownloader pipeline")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output_directory", doc=InputDocumentation(doc="Output directory for the peptide databases")), ToolInput(tag="in_list_studies", input_type=Boolean(optional=True), prefix="--list_studies", doc=InputDocumentation(doc="Print the list of all the studies in cBioPortal\n(https://www.cbioportal.org)")), ToolInput(tag="in_download_study", input_type=String(optional=True), prefix="--download_study", doc=InputDocumentation(doc="Download a specific Study from cBioPortal --\n(all to download all studies)")), ToolInput(tag="in_multithreading", input_type=Boolean(optional=True), prefix="--multithreading", doc=InputDocumentation(doc="Enable multithreading to download multiple\nfiles ad the same time"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory for the peptide databases"))], container="quay.io/biocontainers/pypgatk:0.0.16--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pypgatk_Cli_Py_Cbioportal_Downloader_V0_1_0().translate("wdl")

