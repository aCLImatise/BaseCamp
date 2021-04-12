from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Seq2Science_Explain_V0_1_0 = CommandToolBuilder(tool="seq2science_explain", base_command=["seq2science", "explain"], inputs=[ToolInput(tag="in_hyperref", input_type=Boolean(optional=True), prefix="--hyperref", doc=InputDocumentation(doc="Print urls as html hyperref")), ToolInput(tag="in_snake_make_options", input_type=Int(optional=True), prefix="--snakemakeOptions", doc=InputDocumentation(doc="=VAL [KEY=VAL ...]\nExtra arguments to pass along to snakemake. An example\ncould be seq2science run alignment --cores 12\n--snakemakeOptions resources={mem_gb:100}\nlocal_cores=3. Here we pass local_cores as KEY=VALUE\nand additional resources can even be passed along in a\ndictionary. Take a look at the snakemake API for a\ncomplete list of all possible options: https://snakema\nke.readthedocs.io/en/latest/api_reference/snakemake.ht\nml")), ToolInput(tag="in_name__profile", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="NAME, --profile PROFILE NAME\nUse a seq2science profile. Profiles can be taken from:\nhttps://github.com/s2s-profiles")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--configfile", doc=InputDocumentation(doc="The path to the config file.\n"))], outputs=[], container="quay.io/biocontainers/seq2science:0.5.1--pypy_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq2Science_Explain_V0_1_0().translate("wdl")

