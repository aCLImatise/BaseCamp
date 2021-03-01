from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File

Sreport_V0_1_0 = CommandToolBuilder(tool="Sreport", base_command=["Sreport"], inputs=[ToolInput(tag="in_package_version", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="package version.")), ToolInput(tag="in_help_dialog", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="help dialog.")), ToolInput(tag="in_folder_containing_output", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="folder containing *bin data (output from Qreport). Mandatory option.")), ToolInput(tag="in_type_report_generated", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Type of report to be generated: 'Q' for quality summary\nreport, 'F' for filter summary report (single-end reads), and\n'P' for filter summary report (paired-end reads)\ndata filter summary report. Mandatory option,")), ToolInput(tag="in_file_extension_mandatory", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="file (with NO extension). Mandatory option."))], outputs=[ToolOutput(tag="out_folder_containing_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_folder_containing_output", type_hint=File()), doc=OutputDocumentation(doc="folder containing *bin data (output from Qreport). Mandatory option."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sreport_V0_1_0().translate("wdl", allow_empty_container=True)

