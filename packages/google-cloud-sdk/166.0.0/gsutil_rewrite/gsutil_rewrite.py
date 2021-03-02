from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gsutil_Rewrite_V0_1_0 = CommandToolBuilder(tool="gsutil_rewrite", base_command=["gsutil", "rewrite"], inputs=[ToolInput(tag="in_continues_silently_printing", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Continues silently (without printing error messages) despite\nerrors when rewriting multiple objects. If some of the objects\ncould not be rewritten, gsutil's exit status will be non-zero\neven if this flag is set. This option is implicitly set when\nrunning 'gsutil -m rewrite ...'.")), ToolInput(tag="in_causes_gsutil_read", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="Causes gsutil to read the list of objects to rewrite from stdin.\nThis allows you to run a program that generates the list of\nobjects to rewrite.")), ToolInput(tag="in_rewrite_objects_file", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Rewrite the objects to the current encryption key specific in\nyour boto configuration file. If encryption_key is specified,\nencrypt all objects with this key. If encryption_key is\nunspecified, decrypt all objects. See `gsutil help encryption`\nfor details on encryption configuration.")), ToolInput(tag="in_rewrite_objects_buckets", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="Rewrite objects with the bucket's default object ACL instead of\nthe existing object ACL. This is needed if you do not have\nOWNER permission on the object.")), ToolInput(tag="in_r_r_options", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="The -R and -r options are synonymous. Causes bucket or bucket\nsubdirectory contents to be rewritten recursively.")), ToolInput(tag="in_rewrite_objects_using", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Rewrite objects using the specified storage class.")), ToolInput(tag="in_objects_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For example, the command:\ngsutil rewrite -k gs://bucket/**"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Rewrite_V0_1_0().translate("wdl", allow_empty_container=True)

