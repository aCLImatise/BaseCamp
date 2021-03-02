from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gsutil_Rm_V0_1_0 = CommandToolBuilder(tool="gsutil_rm", base_command=["gsutil", "rm"], inputs=[ToolInput(tag="in_continues_silently_printing", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Continues silently (without printing error messages) despite\nerrors when removing multiple objects. If some of the objects\ncould not be removed, gsutil's exit status will be non-zero even\nif this flag is set. Execution will still halt if an inaccessible\nbucket is encountered. This option is implicitly set when running\n'gsutil -m rm ...'.")), ToolInput(tag="in_causes_gsutil_read", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="Causes gsutil to read the list of objects to remove from stdin.\nThis allows you to run a program that generates the list of\nobjects to remove.")), ToolInput(tag="in_r_r_options", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="The -R and -r options are synonymous. Causes bucket or bucket\nsubdirectory contents (all objects and subdirectories that it\ncontains) to be removed recursively. If used with a bucket-only\nURL (like gs://bucket), after deleting objects and subdirectories\ngsutil will delete the bucket. This option implies the -a option\nand will delete all object versions.")), ToolInput(tag="in_delete_versions_object", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Delete all versions of an object.")), ToolInput(tag="in_subdirectories_dot", input_type=String(), position=0, doc=InputDocumentation(doc="You can also use the -r option to specify recursive object deletion. Thus, for"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Rm_V0_1_0().translate("wdl", allow_empty_container=True)

