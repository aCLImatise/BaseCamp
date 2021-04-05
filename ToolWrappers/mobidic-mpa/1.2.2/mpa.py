from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, File

Mpa_V0_1_0 = CommandToolBuilder(tool="mpa", base_command=["mpa"], inputs=[ToolInput(tag="in_mpa_directory", input_type=Directory(optional=True), prefix="--mpa-directory", doc=InputDocumentation(doc="The path to the MPA installation folder. [Default:\n/usr/local/bin]")), ToolInput(tag="in_logging_level", input_type=String(optional=True), prefix="--logging-level", doc=InputDocumentation(doc="The logger level. [Default: INFO]")), ToolInput(tag="in_no_refseq_version", input_type=Boolean(optional=True), prefix="--no-refseq-version", doc=InputDocumentation(doc="Annotation without using refseq version with annovar.")), ToolInput(tag="in_no_progress_bar", input_type=Boolean(optional=True), prefix="--no-progress-bar", doc=InputDocumentation(doc="Disable progress bar (avoid to read vcf twice for\nlarge vcf).")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The vcf file to annotate (format: VCF). This vcf must\nbe annotate with annovar.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output vcf file with annotation (format : VCF)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output vcf file with annotation (format : VCF)\n"))], container="quay.io/biocontainers/mobidic-mpa:1.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mpa_V0_1_0().translate("wdl")

