from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Assigngenomeannotation_V0_1_0 = CommandToolBuilder(tool="assignGenomeAnnotation", base_command=["assignGenomeAnnotation"], inputs=[ToolInput(tag="in_tags", input_type=Boolean(optional=True), prefix="-tags", doc=InputDocumentation(doc="(Use if first argument is a tag directory)")), ToolInput(tag="in_frag_length", input_type=Boolean(optional=True), prefix="-fragLength", doc=InputDocumentation(doc="<#|auto> (Approximate fragment length, default: auto)")), ToolInput(tag="in_prioritize", input_type=File(optional=True), prefix="-prioritize", doc=InputDocumentation(doc="(annotation file is just a peak file - hasn't been prioritized yet)\nA prioritized file will be created for future use with the program\nThis option should be used if the annotation file isn't prioritized")), ToolInput(tag="in_ann", input_type=File(optional=True), prefix="-ann", doc=InputDocumentation(doc="(File to output annotations for each peak/tag, by default not created)")), ToolInput(tag="in_stats", input_type=File(optional=True), prefix="-stats", doc=InputDocumentation(doc="(File to output annotation statistics, default to stdout)")), ToolInput(tag="in_peak_file_or_tag_directory", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotation_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_prioritize", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prioritize", type_hint=File()), doc=OutputDocumentation(doc="(annotation file is just a peak file - hasn't been prioritized yet)\nA prioritized file will be created for future use with the program\nThis option should be used if the annotation file isn't prioritized")), ToolOutput(tag="out_ann", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ann", type_hint=File()), doc=OutputDocumentation(doc="(File to output annotations for each peak/tag, by default not created)")), ToolOutput(tag="out_stats", output_type=File(optional=True), selector=InputSelector(input_to_select="in_stats", type_hint=File()), doc=OutputDocumentation(doc="(File to output annotation statistics, default to stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assigngenomeannotation_V0_1_0().translate("wdl", allow_empty_container=True)

