from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Virsorter_Config_V0_1_0 = CommandToolBuilder(tool="virsorter_config", base_command=["virsorter", "config"], inputs=[ToolInput(tag="in_show", input_type=Boolean(optional=True), prefix="--show", doc=InputDocumentation(doc="show all configuration values  [default: False]")), ToolInput(tag="in_show_source", input_type=Boolean(optional=True), prefix="--show-source", doc=InputDocumentation(doc="show path of the configuration file  [default: False]")), ToolInput(tag="in_in_it_source", input_type=Boolean(optional=True), prefix="--init-source", doc=InputDocumentation(doc="initialize configuration file  [default: False]")), ToolInput(tag="in_db_dir", input_type=File(optional=True), prefix="--db-dir", doc=InputDocumentation(doc="directory for databases; required for --init-source")), ToolInput(tag="in_set", input_type=Int(optional=True), prefix="--set", doc=InputDocumentation(doc="set KEY to VAL with the format: KEY=VAL; for nested dict in\nYAML use KEY1.KEY2=VAL (e.g. virsorter config --set\nGROUP_INFO.RNA.MIN_GENOME_SIZE=2000)")), ToolInput(tag="in_get", input_type=String(optional=True), prefix="--get", doc=InputDocumentation(doc="the value of a KEY (e.g. virsorter config --get")), ToolInput(tag="in_group_info_do_trna_dot_min_genome_size", input_type=String(), position=0, doc=InputDocumentation(doc="-h, --help     Show this message and exit."))], outputs=[], container="quay.io/biocontainers/virsorter:2.2.2--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virsorter_Config_V0_1_0().translate("wdl")

