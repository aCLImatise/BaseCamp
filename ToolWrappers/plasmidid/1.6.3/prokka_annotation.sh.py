from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int

Prokka_Annotation_Sh_V0_1_0 = CommandToolBuilder(tool="prokka_annotation.sh", base_command=["prokka_annotation.sh"], inputs=[ToolInput(tag="in_file_fasta_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file in FASTA format")), ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory")), ToolInput(tag="in_sample_identification_mandatory", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="for sample identification (mandatory) and output file name")), ToolInput(tag="in_bacteria_by_default", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="(Bacteria by default)")), ToolInput(tag="in_name_optional_unset", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="name (optional). If unset, samples will be gathered in NO_GROUP group")), ToolInput(tag="in_genus_case_known", input_type=String(optional=True), prefix="-G", doc=InputDocumentation(doc="genus in case is known by user")), ToolInput(tag="in_species_case_known", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="species in case is known by user")), ToolInput(tag="in_remove_files_other", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc=":remove files other than gff and renamed fasta")), ToolInput(tag="in_of_threads", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="of threads")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[ToolOutput(tag="out_sample_identification_mandatory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sample_identification_mandatory", type_hint=File()), doc=OutputDocumentation(doc="for sample identification (mandatory) and output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prokka_Annotation_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

