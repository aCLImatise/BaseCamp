from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File, Directory, Boolean, String, Int

Megalodon_Extras_Modified_Bases_Describe_Alphabet_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_modified_bases_describe_alphabet", base_command=["megalodon_extras", "modified_bases", "describe_alphabet"], inputs=[ToolInput(tag="in_guppy_config", input_type=Float(optional=True), prefix="--guppy-config", doc=InputDocumentation(doc="Guppy config. Default: dna_r9.4.1_450bps_modbases_dam-\ndcm-cpg_hac.cfg")), ToolInput(tag="in_guppy_server_path", input_type=File(optional=True), prefix="--guppy-server-path", doc=InputDocumentation(doc="Path to guppy server executable. Default: ./ont-\nguppy/bin/guppy_basecall_server")), ToolInput(tag="in_guppy_logs_output_directory", input_type=Directory(optional=True), prefix="--guppy-logs-output-directory", doc=InputDocumentation(doc="Directory to output guppy logs. Default: guppy_logs")), ToolInput(tag="in_do_not_use_guppy_server", input_type=Boolean(optional=True), prefix="--do-not-use-guppy-server", doc=InputDocumentation(doc="Use alternative basecalling backend. Either FAST5\n(default; requires --post_out when running guppy) or\ntaiyaki (set `--taiyaki-model-filename` to use taiyaki\nbackend).")), ToolInput(tag="in_guppy_params", input_type=String(optional=True), prefix="--guppy-params", doc=InputDocumentation(doc="Extra guppy server parameters. Main purpose for\noptimal performance based on compute environment.\nQuote parameters to avoid them being parsed by\nmegalodon.")), ToolInput(tag="in_fast_fives_dir", input_type=Int(optional=True), prefix="--fast5s_dir", doc=InputDocumentation(doc="Directory containing raw fast5.")), ToolInput(tag="in_tai_yaki_model_filename", input_type=File(optional=True), prefix="--taiyaki-model-filename", doc=InputDocumentation(doc="Taiyaki basecalling model checkpoint file.\n"))], outputs=[ToolOutput(tag="out_guppy_logs_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_guppy_logs_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Directory to output guppy logs. Default: guppy_logs"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Modified_Bases_Describe_Alphabet_V0_1_0().translate("wdl", allow_empty_container=True)

