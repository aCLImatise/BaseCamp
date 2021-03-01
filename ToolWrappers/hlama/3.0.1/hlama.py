from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, Int

Hlama_V0_1_0 = CommandToolBuilder(tool="hlama", base_command=["hlama"], inputs=[ToolInput(tag="in_tumor_normal", input_type=File(optional=True), prefix="--tumor-normal", doc=InputDocumentation(doc="Path to tumor/normal TSV file, starts tumor/normal\nmode")), ToolInput(tag="in_pedigree", input_type=File(optional=True), prefix="--pedigree", doc=InputDocumentation(doc="Path to pedigree file, starts pedigree mode")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Optional explicit path to configuration file, by\ndefault ~/.hlama.cfg is searched for")), ToolInput(tag="in_work_dir", input_type=Directory(optional=True), prefix="--work-dir", doc=InputDocumentation(doc="Directory to create the Snakefile in")), ToolInput(tag="in_reads_base_dir", input_type=Directory(optional=True), prefix="--reads-base-dir", doc=InputDocumentation(doc="Base directory for reads, give multiple times for\nmultiple places to search")), ToolInput(tag="in_dont_run_snake_make", input_type=Boolean(optional=True), prefix="--dont-run-snakemake", doc=InputDocumentation(doc="Only create Snakefile but do not run Snakemake yet")), ToolInput(tag="in_disable_checks", input_type=Boolean(optional=True), prefix="--disable-checks", doc=InputDocumentation(doc="Disable input checks")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="Number of threads to use for read mapping, defaults to\n1\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hlama_V0_1_0().translate("wdl", allow_empty_container=True)

