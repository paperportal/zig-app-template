const sdk = @import("paper_portal_sdk");

var main_scene: MainScene = .{};

pub fn main() !void {
    sdk.core.log.info("main: zig_app_template is running!");
    sdk.ui.scene.set(sdk.ui.Scene.from(MainScene, &main_scene)) catch {};
}

const MainScene = struct {
    pub fn draw(_: *MainScene, _: *sdk.ui.Context) !void {
        sdk.core.log.info("MainScene: draw was called");
    }

    pub fn onGesture(self: *MainScene, ctx: *sdk.ui.Context, nav: *sdk.ui.Navigator, ev: sdk.ui.GestureEvent) !void {
        _ = self;
        _ = ctx;
        _ = nav;
        _ = ev;
        sdk.core.log.info("MainScene: onGesture was called");
    }
};
