from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fc_Get_Read_Hctg_Map_Py_V0_1_0 = CommandToolBuilder(tool="fc_get_read_hctg_map.py", base_command=["fc_get_read_hctg_map.py"], inputs=[ToolInput(tag="in_base_dir", input_type=String(optional=True), prefix="--base-dir", doc=InputDocumentation(doc="Substituted as {base_dir} into default inputs.\n(default: .)")), ToolInput(tag="in_raw_read_ids_fn", input_type=File(optional=True), prefix="--rawread-ids-fn", doc=InputDocumentation(doc="rawread_ids filename (default:\n{base_dir}/3-unzip/reads/dump_rawread_ids/rawread_ids)")), ToolInput(tag="in_p_read_ids_fn", input_type=File(optional=True), prefix="--pread-ids-fn", doc=InputDocumentation(doc="pread ids filename (default:\n{base_dir}/3-unzip/reads/dump_pread_ids/pread_ids)")), ToolInput(tag="in_p_ctg_edges_fn", input_type=File(optional=True), prefix="--p-ctg-edges-fn", doc=InputDocumentation(doc="primary contig edges filename (default:\n{base_dir}/3-unzip/all_p_ctg_edges)")), ToolInput(tag="in_h_ctg_edges_fn", input_type=File(optional=True), prefix="--h-ctg-edges-fn", doc=InputDocumentation(doc="haplotype contig edges filename (default:\n{base_dir}/3-unzip/all_h_ctg_edges)")), ToolInput(tag="in_h_ctg_ids_fn", input_type=File(optional=True), prefix="--h-ctg-ids-fn", doc=InputDocumentation(doc="haplotype contig ids filename (default:\n{base_dir}/3-unzip/all_h_ctg_ids)")), ToolInput(tag="in_output_fn", input_type=File(optional=True), prefix="--output-fn", doc=InputDocumentation(doc="output read_to_contig_map filename (default:\n{base_dir}/4-polish/read_maps/read_to_contig_map)\n"))], outputs=[ToolOutput(tag="out_output_fn", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fn", type_hint=File()), doc=OutputDocumentation(doc="output read_to_contig_map filename (default:\n{base_dir}/4-polish/read_maps/read_to_contig_map)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Get_Read_Hctg_Map_Py_V0_1_0().translate("wdl", allow_empty_container=True)

