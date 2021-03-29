from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Iu_Remove_Ids_From_Fastq_V0_1_0 = CommandToolBuilder(tool="iu_remove_ids_from_fastq", base_command=["iu-remove-ids-from-fastq"], inputs=[ToolInput(tag="in_input_fast_q", input_type=File(optional=True), prefix="--input-fastq", doc=InputDocumentation(doc="Sequences file from which reads will be removed in\nFASTQ format")), ToolInput(tag="in_ids_file_path", input_type=File(optional=True), prefix="--ids-file-path", doc=InputDocumentation(doc="Input file that contains the list of ids for removal")), ToolInput(tag="in_delimiter", input_type=File(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="By default this script will perform exact match match\nfor IDs you listed in the IDs file. But using this\nparameter, you can ask the script to 'split' the IDs\nfound in the FASTQ file, and then try to match the\nfirst part of the resulting ID to those you listed in\nthe IDs file.")), ToolInput(tag="in_generate_output_for_survived_only", input_type=File(optional=True), prefix="--generate-output-for-survived-only", doc=InputDocumentation(doc="If provided then only one output file (the file with\n'survived' ids) will be produced.")), ToolInput(tag="in_keep_ids", input_type=Boolean(optional=True), prefix="--keep-ids", doc=InputDocumentation(doc="If provided, then instead of removing the ids in the\nlist, only the ids in the list will be kept (and the\nrest would be removed).\n"))], outputs=[ToolOutput(tag="out_generate_output_for_survived_only", output_type=File(optional=True), selector=InputSelector(input_to_select="in_generate_output_for_survived_only", type_hint=File()), doc=OutputDocumentation(doc="If provided then only one output file (the file with\n'survived' ids) will be produced."))], container="quay.io/biocontainers/illumina-utils:2.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Remove_Ids_From_Fastq_V0_1_0().translate("wdl")

