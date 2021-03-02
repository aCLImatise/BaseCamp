from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String

Sequana_Taxonomy_V0_1_0 = CommandToolBuilder(tool="sequana_taxonomy", base_command=["sequana_taxonomy"], inputs=[ToolInput(tag="in_homeuserconfigsequanakrakentoydb", input_type=Boolean(optional=True), prefix="--databases", doc=InputDocumentation(doc="/home/user/.config/sequana/kraken_toydb")), ToolInput(tag="in_file_one", input_type=File(optional=True), prefix="--file1", doc=InputDocumentation(doc="R1 fastq file (zipped)")), ToolInput(tag="in_file_two", input_type=File(optional=True), prefix="--file2", doc=InputDocumentation(doc="R2 fastq file (zipped)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="name of the output directory")), ToolInput(tag="in_keep_temp_files", input_type=Boolean(optional=True), prefix="--keep-temp-files", doc=InputDocumentation(doc="keep temporary files (hierarchical case with several")), ToolInput(tag="in_show_html", input_type=Boolean(optional=True), prefix="--show-html", doc=InputDocumentation(doc="Results are stored in report/ directory and results\nare not shown by default")), ToolInput(tag="in_download", input_type=String(optional=True), prefix="--download", doc=InputDocumentation(doc="download an official sequana DB. The sequana_db1 is\nstored in a dedicated Synapse page (www.synapse.org).\nminikraken is downloaded from the kraken's author\npage, and toydb from sequana github.")), ToolInput(tag="in_unclassified_out", input_type=File(optional=True), prefix="--unclassified-out", doc=InputDocumentation(doc="save unclassified sequences to filename")), ToolInput(tag="in_classified_out", input_type=File(optional=True), prefix="--classified-out", doc=InputDocumentation(doc="save unclassified sequences to filename")), ToolInput(tag="in__thread_number", input_type=String(), position=0, doc=InputDocumentation(doc="--thread THREAD       number of threads to use (default 4)"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="name of the output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Taxonomy_V0_1_0().translate("wdl", allow_empty_container=True)

